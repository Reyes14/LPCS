function Get-Multiply {
    param([Parameter()][int]$n1, [Parameter()][int]$n2)
    $res = $n1 * $n2
    Write-Host "El resultado es:" $res
}
function Get-Division {
    param([Parameter()][int]$n1, [Parameter()][int]$n2)
    $res = $n1 / $n2
    Write-Host "El resultado es:" $res
}

$opc = Read-Host -Prompt "Elige una opcion y escribe el numero: 1-Multiplicar 2-Dividir 3-Salir"

while ($opc -ne 3) {
    if ($opc -eq 1) {
        $num1 = Read-Host -Prompt "Ingresa el primer numero"
        $num2 = Read-Host -Prompt "Ingresa el segundo numero"
        Get-Multiply -n1 $num1 -n2 $num2
        $opc = Read-Host -Prompt "Elige una opcion y escribe el numero: 1-Multiplicar 2-Dividir 3-Salir"
    }elseif ($opc -eq 2) {
        $num1 = Read-Host -Prompt "Ingresa el dividendo"
        $num2 = Read-Host -Prompt "Ingresa el divisor"
        Get-Division -n1 $num1 -n2 $num2
        $opc = Read-Host -Prompt "Elige una opcion y escribe el numero: 1-Multiplicar 2-Dividir 3-Salir"
    }else {
        Write-Host "Opcion no valida."
        $opc = Read-Host -Prompt "Elige una opcion y escribe el numero: 1-Multiplicar 2-Dividir 3-Salir"
    }    
}

