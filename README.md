# zk_sra_encryption.aleo

## Build Guide

Encrypt / Decrypt Examples 1 keypair

```bash
leo run test_encrypt_exp_by_squaring 12field 1170454781field 2423676821field 2801413507u128
       Leo ✅ Compiled 'main.leo' into Aleo instructions

⛓  Constraints

 •  'zk_sra_encryption_v0_0_2.aleo/test_encrypt_exp_by_squaring' - 170,561 constraints (called 1 time)

➡️  Outputs

 • 2388233669field
 • 12field

       Leo ✅ Finished 'zk_sra_encryption_v0_0_2.aleo/test_encrypt_exp_by_squaring'
```

```bash
leo run test_encrypt_exp_by_squaring 63field 1170454781field 2423676821field 2801413507u128
       Leo ✅ Compiled 'main.leo' into Aleo instructions

⛓  Constraints

 •  'zk_sra_encryption_v0_0_2.aleo/test_encrypt_exp_by_squaring' - 170,561 constraints (called 1 time)

➡️  Outputs

 • 421829602field
 • 63field

       Leo ✅ Finished 'zk_sra_encryption_v0_0_2.aleo/test_encrypt_exp_by_squaring'
```

Encrypt / Decrypt Examples 2 keypairs

```bash
leo run test_encrypt_exp_by_squaring 2388233669field 1380396943field 2734228207field 2801413507u128
       Leo ✅ Compiled 'main.leo' into Aleo instructions

⛓  Constraints

 •  'zk_sra_encryption_v0_0_2.aleo/test_encrypt_exp_by_squaring' - 170,561 constraints (called 1 time)

➡️  Outputs

 • 1070862390field
 • 2388233669field

       Leo ✅ Finished 'zk_sra_encryption_v0_0_2.aleo/test_encrypt_exp_by_squaring
```

```bash
leo run test_exp_by_squaring 1070862390field 2423676821field 2734228207field 2801413507u128
       Leo ✅ Compiled 'main.leo' into Aleo instructions

⛓  Constraints

 •  'zk_sra_encryption_v0_0_2.aleo/test_exp_by_squaring' - 170,558 constraints (called 1 time)

➡️  Outputs

 • 1042201568field
 • 12field
 ```