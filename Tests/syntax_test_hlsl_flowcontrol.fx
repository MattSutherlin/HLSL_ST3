// SYNTAX TEST "HLSL.sublime-syntax"


  [unroll(3)]
//^^^^^^^ keyword.control.attribute.hlsl
//          ^ keyword.control.attribute.hlsl
//       ^^^ - keyword.control.attribute.hlsl
//        ^ constant.numeric.hlsl
  for (int i = 0; i < terminator; ++i)
//^^^ keyword.control.hlsl
//   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -keyword.control.hlsl
  {
    [branch]
//  ^^^^^^^^ keyword.control.attribute.hlsl
    if (otherVar)
//  ^^ keyword.control.hlsl
//    ^^^^^^^^^^^ -keyword.control.hlsl
    {
      continue;
//    ^^^^^^^^ keyword.control.hlsl
//            ^ -keyword.control.hlsl
    }
    else
//  ^^^^ keyword.control.hlsl
    {
      discard;
//    ^^^^^^^ keyword.control.hlsl
//           ^ -keyword.control.hlsl
    }
  }

  [unroll(staticVar)]
//^^^^^^^ keyword.control.attribute.hlsl
//                  ^ keyword.control.attribute.hlsl
//       ^^^^^^^^^^^ - keyword.control.attribute.hlsl
  while (condition.active())
//^^^^^ keyword.control.hlsl
//     ^^^^^^^^^^^^^^^^^^^^^ -keyword.control.hlsl
  {
  }

  do
//^^ keyword.control.hlsl
  {
  } while (condition != MAX_COUNT)
//  ^^^^^ keyword.control.hlsl
//^^ -keyword.control.hlsl
//       ^^^^^^^^^^^^^^^^^^^^^^^^^ - keyword.control.hlsl

  if (condition > 1)
//^^ keyword.control.hlsl
//  ^^^^^^^^^^^^^^^^ -keyword.control.hlsl
  {
  }
  else if (condition == false)
//^^^^ keyword.control.hlsl
//     ^^ keyword.control.hlsl
//    ^ -keyword.control.hlsl
//       ^^^^^^^^^^^^^^^^^^^^^ -keyword.control.hlsl
  {
  }
  else
//^^^^ keyword.control.hlsl
  {
  }

  switch (condition):
//^^^^^^ keyword.control.hlsl
//      ^^^^^^^^^^^^^ -keyword.control.hlsl
  {
    case 1:
//  ^^^^ keyword.control.hlsl
//      ^^^ -keyword.control.hlsl
    {
      break;
//    ^^^^^ keyword.control.hlsl
//         ^ -keyword.control.hlsl
    }

    case 2:
//  ^^^^ keyword.control.hlsl
//      ^^^ -keyword.control.hlsl
    case 3:
//  ^^^^ keyword.control.hlsl
//      ^^^ -keyword.control.hlsl
      break;
//    ^^^^^ keyword.control.hlsl
//         ^ -keyword.control.hlsl

    case TOKEN_1:
//  ^^^^ keyword.control.hlsl
//      ^^^^^^^^^ -keyword.control.hlsl
    {
      return;
//    ^^^^^^ keyword.control.hlsl
//          ^ -keyword.control.hlsl
    }
  }