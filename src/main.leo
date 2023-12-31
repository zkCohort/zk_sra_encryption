program zk_sra_encryption_v0_0_2.aleo {
    function exp_by_squaring(base: field, exp: field, modulus: u128) -> field {
        let result: field = 1field;
        let current_base: field = base;

        for i: u8 in 0u8..32u8 {
            if (exp as u128 % 2u128 == 1u128) { 
                result = (((result * current_base) as u128) % modulus) as field;
            }
            current_base = (((current_base * current_base) as u128) % modulus) as field;
            exp = ((exp as u128) >> 1u8) as field; // divide by two
        }

        return result as field;
    }

    transition sra_encrypt(m: field, e: field, n: u128) -> field {
        return exp_by_squaring(m, e, n);
    }

    transition sra_decrypt(c: field, d: field, n: u128) -> field {
        return exp_by_squaring(c, d, n);
    }
    
    transition encrypt_deck(e: field, n: u128, deck: [[field; 26]; 2]) -> [[field; 26]; 2] {
        let bottom_half: [field; 26] = deck[0u8];
        let top_half: [field; 26] = deck[1u8];
        let t0: field = exp_by_squaring(bottom_half[0u8], e, n);
        let t1: field = exp_by_squaring(bottom_half[1u8], e, n);
        let t2: field = exp_by_squaring(bottom_half[2u8], e, n);
        let t3: field = exp_by_squaring(bottom_half[3u8], e, n);
        let t4: field = exp_by_squaring(bottom_half[4u8], e, n);
        let t5: field = exp_by_squaring(bottom_half[5u8], e, n);
        let t6: field = exp_by_squaring(bottom_half[6u8], e, n);
        let t7: field = exp_by_squaring(bottom_half[7u8], e, n);
        let t8: field = exp_by_squaring(bottom_half[8u8], e, n);
        let t9: field = exp_by_squaring(bottom_half[9u8], e, n);
        let t10: field = exp_by_squaring(bottom_half[10u8], e, n);
        let t11: field = exp_by_squaring(bottom_half[11u8], e, n);
        let t12: field = exp_by_squaring(bottom_half[12u8], e, n);
        let t13: field = exp_by_squaring(bottom_half[13u8], e, n);
        let t14: field = exp_by_squaring(bottom_half[14u8], e, n);
        let t15: field = exp_by_squaring(bottom_half[15u8], e, n);
        let t16: field = exp_by_squaring(bottom_half[16u8], e, n);
        let t17: field = exp_by_squaring(bottom_half[17u8], e, n);
        let t18: field = exp_by_squaring(bottom_half[18u8], e, n);
        let t19: field = exp_by_squaring(bottom_half[19u8], e, n);
        let t20: field = exp_by_squaring(bottom_half[20u8], e, n);
        let t21: field = exp_by_squaring(bottom_half[21u8], e, n);
        let t22: field = exp_by_squaring(bottom_half[22u8], e, n);
        let t23: field = exp_by_squaring(bottom_half[23u8], e, n);
        let t24: field = exp_by_squaring(bottom_half[24u8], e, n);
        let t25: field = exp_by_squaring(bottom_half[25u8], e, n);
        let t26: field = exp_by_squaring(top_half[0u8], e, n);
        let t27: field = exp_by_squaring(top_half[1u8], e, n);
        let t28: field = exp_by_squaring(top_half[2u8], e, n);
        let t29: field = exp_by_squaring(top_half[3u8], e, n);
        let t30: field = exp_by_squaring(top_half[4u8], e, n);
        let t31: field = exp_by_squaring(top_half[5u8], e, n);
        let t32: field = exp_by_squaring(top_half[6u8], e, n);
        let t33: field = exp_by_squaring(top_half[7u8], e, n);
        let t34: field = exp_by_squaring(top_half[8u8], e, n);
        let t35: field = exp_by_squaring(top_half[9u8], e, n);
        let t36: field = exp_by_squaring(top_half[10u8], e, n);
        let t37: field = exp_by_squaring(top_half[11u8], e, n);
        let t38: field = exp_by_squaring(top_half[12u8], e, n);
        let t39: field = exp_by_squaring(top_half[13u8], e, n);
        let t40: field = exp_by_squaring(top_half[14u8], e, n);
        let t41: field = exp_by_squaring(top_half[15u8], e, n);
        let t42: field = exp_by_squaring(top_half[16u8], e, n);
        let t43: field = exp_by_squaring(top_half[17u8], e, n);
        let t44: field = exp_by_squaring(top_half[18u8], e, n);
        let t45: field = exp_by_squaring(top_half[19u8], e, n);
        let t46: field = exp_by_squaring(top_half[20u8], e, n);
        let t47: field = exp_by_squaring(top_half[21u8], e, n);
        let t48: field = exp_by_squaring(top_half[22u8], e, n);
        let t49: field = exp_by_squaring(top_half[23u8], e, n);
        let t50: field = exp_by_squaring(top_half[24u8], e, n);
        let t51: field = exp_by_squaring(top_half[25u8], e, n);
        return [[t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10,
                 t11, t12, t13, t14, t15, t16, t17, t18, t19, t20,
                 t21, t22, t23, t24, t25],
                [t26, t27, t28, t29, t30, t31, t32, t33, t34, t35,
                 t36, t37, t38, t39, t40, t41, t42, t43, t44, t45,
                 t46, t47, t48, t49, t50, t51]];
    }

    transition decrypt_deck(d: field, n: u128, deck: [[field; 26]; 2]) -> [[field; 26]; 2] {
        let bottom_half: [field; 26] = deck[0u8];
        let top_half: [field; 26] = deck[1u8];
        let t0: field = exp_by_squaring(bottom_half[0u8], d, n);
        let t1: field = exp_by_squaring(bottom_half[1u8], d, n);
        let t2: field = exp_by_squaring(bottom_half[2u8], d, n);
        let t3: field = exp_by_squaring(bottom_half[3u8], d, n);
        let t4: field = exp_by_squaring(bottom_half[4u8], d, n);
        let t5: field = exp_by_squaring(bottom_half[5u8], d, n);
        let t6: field = exp_by_squaring(bottom_half[6u8], d, n);
        let t7: field = exp_by_squaring(bottom_half[7u8], d, n);
        let t8: field = exp_by_squaring(bottom_half[8u8], d, n);
        let t9: field = exp_by_squaring(bottom_half[9u8], d, n);
        let t10: field = exp_by_squaring(bottom_half[10u8], d, n);
        let t11: field = exp_by_squaring(bottom_half[11u8], d, n);
        let t12: field = exp_by_squaring(bottom_half[12u8], d, n);
        let t13: field = exp_by_squaring(bottom_half[13u8], d, n);
        let t14: field = exp_by_squaring(bottom_half[14u8], d, n);
        let t15: field = exp_by_squaring(bottom_half[15u8], d, n);
        let t16: field = exp_by_squaring(bottom_half[16u8], d, n);
        let t17: field = exp_by_squaring(bottom_half[17u8], d, n);
        let t18: field = exp_by_squaring(bottom_half[18u8], d, n);
        let t19: field = exp_by_squaring(bottom_half[19u8], d, n);
        let t20: field = exp_by_squaring(bottom_half[20u8], d, n);
        let t21: field = exp_by_squaring(bottom_half[21u8], d, n);
        let t22: field = exp_by_squaring(bottom_half[22u8], d, n);
        let t23: field = exp_by_squaring(bottom_half[23u8], d, n);
        let t24: field = exp_by_squaring(bottom_half[24u8], d, n);
        let t25: field = exp_by_squaring(bottom_half[25u8], d, n);
        let t26: field = exp_by_squaring(top_half[0u8], d, n);
        let t27: field = exp_by_squaring(top_half[1u8], d, n);
        let t28: field = exp_by_squaring(top_half[2u8], d, n);
        let t29: field = exp_by_squaring(top_half[3u8], d, n);
        let t30: field = exp_by_squaring(top_half[4u8], d, n);
        let t31: field = exp_by_squaring(top_half[5u8], d, n);
        let t32: field = exp_by_squaring(top_half[6u8], d, n);
        let t33: field = exp_by_squaring(top_half[7u8], d, n);
        let t34: field = exp_by_squaring(top_half[8u8], d, n);
        let t35: field = exp_by_squaring(top_half[9u8], d, n);
        let t36: field = exp_by_squaring(top_half[10u8], d, n);
        let t37: field = exp_by_squaring(top_half[11u8], d, n);
        let t38: field = exp_by_squaring(top_half[12u8], d, n);
        let t39: field = exp_by_squaring(top_half[13u8], d, n);
        let t40: field = exp_by_squaring(top_half[14u8], d, n);
        let t41: field = exp_by_squaring(top_half[15u8], d, n);
        let t42: field = exp_by_squaring(top_half[16u8], d, n);
        let t43: field = exp_by_squaring(top_half[17u8], d, n);
        let t44: field = exp_by_squaring(top_half[18u8], d, n);
        let t45: field = exp_by_squaring(top_half[19u8], d, n);
        let t46: field = exp_by_squaring(top_half[20u8], d, n);
        let t47: field = exp_by_squaring(top_half[21u8], d, n);
        let t48: field = exp_by_squaring(top_half[22u8], d, n);
        let t49: field = exp_by_squaring(top_half[23u8], d, n);
        let t50: field = exp_by_squaring(top_half[24u8], d, n);
        let t51: field = exp_by_squaring(top_half[25u8], d, n);
        return [[t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10,
                 t11, t12, t13, t14, t15, t16, t17, t18, t19, t20,
                 t21, t22, t23, t24, t25],
                [t26, t27, t28, t29, t30, t31, t32, t33, t34, t35,
                 t36, t37, t38, t39, t40, t41, t42, t43, t44, t45,
                 t46, t47, t48, t49, t50, t51]];
    }

    transition encrypt_deck_per_card(deck_e: [[field; 26]; 2], n: u128, deck: [[field; 26]; 2]) -> [[field; 26]; 2] {
        let bottom_half: [field; 26] = deck[0u8];
        let top_half: [field; 26] = deck[1u8];
        let bottom_half_e: [field; 26] = deck_e[0u8];
        let top_half_e: [field; 26] = deck_e[1u8];
        // Encrypt per card
        let t0: field = exp_by_squaring(bottom_half[0u8], bottom_half_e[0u8], n);
        let t1: field = exp_by_squaring(bottom_half[1u8], bottom_half_e[1u8], n);
        let t2: field = exp_by_squaring(bottom_half[2u8], bottom_half_e[2u8], n);
        let t3: field = exp_by_squaring(bottom_half[3u8], bottom_half_e[3u8], n);
        let t4: field = exp_by_squaring(bottom_half[4u8], bottom_half_e[4u8], n);
        let t5: field = exp_by_squaring(bottom_half[5u8], bottom_half_e[5u8], n);
        let t6: field = exp_by_squaring(bottom_half[6u8], bottom_half_e[6u8], n);
        let t7: field = exp_by_squaring(bottom_half[7u8], bottom_half_e[7u8], n);
        let t8: field = exp_by_squaring(bottom_half[8u8], bottom_half_e[8u8], n);
        let t9: field = exp_by_squaring(bottom_half[9u8], bottom_half_e[9u8], n);
        let t10: field = exp_by_squaring(bottom_half[10u8], bottom_half_e[10u8], n);
        let t11: field = exp_by_squaring(bottom_half[11u8], bottom_half_e[11u8], n);
        let t12: field = exp_by_squaring(bottom_half[12u8], bottom_half_e[12u8], n);
        let t13: field = exp_by_squaring(bottom_half[13u8], bottom_half_e[13u8], n);
        let t14: field = exp_by_squaring(bottom_half[14u8], bottom_half_e[14u8], n);
        let t15: field = exp_by_squaring(bottom_half[15u8], bottom_half_e[15u8], n);
        let t16: field = exp_by_squaring(bottom_half[16u8], bottom_half_e[16u8], n);
        let t17: field = exp_by_squaring(bottom_half[17u8], bottom_half_e[17u8], n);
        let t18: field = exp_by_squaring(bottom_half[18u8], bottom_half_e[18u8], n);
        let t19: field = exp_by_squaring(bottom_half[19u8], bottom_half_e[19u8], n);
        let t20: field = exp_by_squaring(bottom_half[20u8], bottom_half_e[20u8], n);
        let t21: field = exp_by_squaring(bottom_half[21u8], bottom_half_e[21u8], n);
        let t22: field = exp_by_squaring(bottom_half[22u8], bottom_half_e[22u8], n);
        let t23: field = exp_by_squaring(bottom_half[23u8], bottom_half_e[23u8], n);
        let t24: field = exp_by_squaring(bottom_half[24u8], bottom_half_e[24u8], n);
        let t25: field = exp_by_squaring(bottom_half[25u8], bottom_half_e[25u8], n);
        let t26: field = exp_by_squaring(top_half[0u8], top_half_e[0u8], n);
        let t27: field = exp_by_squaring(top_half[1u8], top_half_e[1u8], n);
        let t28: field = exp_by_squaring(top_half[2u8], top_half_e[2u8], n);
        let t29: field = exp_by_squaring(top_half[3u8], top_half_e[3u8], n);
        let t30: field = exp_by_squaring(top_half[4u8], top_half_e[4u8], n);
        let t31: field = exp_by_squaring(top_half[5u8], top_half_e[5u8], n);
        let t32: field = exp_by_squaring(top_half[6u8], top_half_e[6u8], n);
        let t33: field = exp_by_squaring(top_half[7u8], top_half_e[7u8], n);
        let t34: field = exp_by_squaring(top_half[8u8], top_half_e[8u8], n);
        let t35: field = exp_by_squaring(top_half[9u8], top_half_e[9u8], n);
        let t36: field = exp_by_squaring(top_half[10u8], top_half_e[10u8], n);
        let t37: field = exp_by_squaring(top_half[11u8], top_half_e[11u8], n);
        let t38: field = exp_by_squaring(top_half[12u8], top_half_e[12u8], n);
        let t39: field = exp_by_squaring(top_half[13u8], top_half_e[13u8], n);
        let t40: field = exp_by_squaring(top_half[14u8], top_half_e[14u8], n);
        let t41: field = exp_by_squaring(top_half[15u8], top_half_e[15u8], n);
        let t42: field = exp_by_squaring(top_half[16u8], top_half_e[16u8], n);
        let t43: field = exp_by_squaring(top_half[17u8], top_half_e[17u8], n);
        let t44: field = exp_by_squaring(top_half[18u8], top_half_e[18u8], n);
        let t45: field = exp_by_squaring(top_half[19u8], top_half_e[19u8], n);
        let t46: field = exp_by_squaring(top_half[20u8], top_half_e[20u8], n);
        let t47: field = exp_by_squaring(top_half[21u8], top_half_e[21u8], n);
        let t48: field = exp_by_squaring(top_half[22u8], top_half_e[22u8], n);
        let t49: field = exp_by_squaring(top_half[23u8], top_half_e[23u8], n);
        let t50: field = exp_by_squaring(top_half[24u8], top_half_e[24u8], n);
        let t51: field = exp_by_squaring(top_half[25u8], top_half_e[25u8], n);
        return [[t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10,
                 t11, t12, t13, t14, t15, t16, t17, t18, t19, t20,
                 t21, t22, t23, t24, t25],
                [t26, t27, t28, t29, t30, t31, t32, t33, t34, t35,
                 t36, t37, t38, t39, t40, t41, t42, t43, t44, t45,
                 t46, t47, t48, t49, t50, t51]];
    }

    transition test_encrypt_exp_by_squaring(public m: field, e: field, d: field, n: u128) -> (field, field) {
      let c: field = exp_by_squaring(m, e, n);
      let p: field = exp_by_squaring(c, d, n);
      assert_eq(m, p);
      return (c, p);
    }

    transition test_exp_by_squaring(public m: field, d1: field, d2: field, n: u128) -> (field, field) {
      let m1: field = exp_by_squaring(m, d1, n);
      let p: field = exp_by_squaring(m1, d2, n);
      return (m1, p);
    }
}