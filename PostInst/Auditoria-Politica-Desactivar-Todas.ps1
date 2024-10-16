$policies = @(
    @{ Subcategory = "Logon"; Success = "enable"; Failure = "enable" },
    @{ Subcategory = "Account Lockout"; Success = "enable"; Failure = "enable" },
    @{ Subcategory = "Process Creation"; Success = "enable"; Failure = "enable" }
)

# Aplicar las políticas de auditoría
foreach ($policy in $policies) {
    AuditPol /set /subcategory:$($policy.Subcategory) /success:$($policy.Success) /failure:$($policy.Failure)
}
