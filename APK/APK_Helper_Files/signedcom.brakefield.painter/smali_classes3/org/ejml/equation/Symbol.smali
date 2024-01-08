.class public final enum Lorg/ejml/equation/Symbol;
.super Ljava/lang/Enum;
.source "Symbol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/ejml/equation/Symbol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/ejml/equation/Symbol;

.field public static final enum ASSIGN:Lorg/ejml/equation/Symbol;

.field public static final enum BRACKET_LEFT:Lorg/ejml/equation/Symbol;

.field public static final enum BRACKET_RIGHT:Lorg/ejml/equation/Symbol;

.field public static final enum COLON:Lorg/ejml/equation/Symbol;

.field public static final enum COMMA:Lorg/ejml/equation/Symbol;

.field public static final enum ELEMENT_DIVIDE:Lorg/ejml/equation/Symbol;

.field public static final enum ELEMENT_POWER:Lorg/ejml/equation/Symbol;

.field public static final enum ELEMENT_TIMES:Lorg/ejml/equation/Symbol;

.field public static final enum GREATER_THAN:Lorg/ejml/equation/Symbol;

.field public static final enum GREATER_THAN_EQ:Lorg/ejml/equation/Symbol;

.field public static final enum LDIVIDE:Lorg/ejml/equation/Symbol;

.field public static final enum LESS_THAN:Lorg/ejml/equation/Symbol;

.field public static final enum LESS_THAN_EQ:Lorg/ejml/equation/Symbol;

.field public static final enum MINUS:Lorg/ejml/equation/Symbol;

.field public static final enum PAREN_LEFT:Lorg/ejml/equation/Symbol;

.field public static final enum PAREN_RIGHT:Lorg/ejml/equation/Symbol;

.field public static final enum PERIOD:Lorg/ejml/equation/Symbol;

.field public static final enum PLUS:Lorg/ejml/equation/Symbol;

.field public static final enum POWER:Lorg/ejml/equation/Symbol;

.field public static final enum RDIVIDE:Lorg/ejml/equation/Symbol;

.field public static final enum SEMICOLON:Lorg/ejml/equation/Symbol;

.field public static final enum TIMES:Lorg/ejml/equation/Symbol;

.field public static final enum TRANSPOSE:Lorg/ejml/equation/Symbol;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 27
    new-instance v1, Lorg/ejml/equation/Symbol;

    move-object v0, v1

    const-string v2, "PLUS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/ejml/equation/Symbol;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/ejml/equation/Symbol;->PLUS:Lorg/ejml/equation/Symbol;

    .line 28
    new-instance v2, Lorg/ejml/equation/Symbol;

    move-object v1, v2

    const-string v3, "MINUS"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lorg/ejml/equation/Symbol;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/ejml/equation/Symbol;->MINUS:Lorg/ejml/equation/Symbol;

    .line 29
    new-instance v3, Lorg/ejml/equation/Symbol;

    move-object v2, v3

    const-string v4, "TIMES"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lorg/ejml/equation/Symbol;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/ejml/equation/Symbol;->TIMES:Lorg/ejml/equation/Symbol;

    .line 30
    new-instance v4, Lorg/ejml/equation/Symbol;

    move-object v3, v4

    const-string v5, "LDIVIDE"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lorg/ejml/equation/Symbol;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/ejml/equation/Symbol;->LDIVIDE:Lorg/ejml/equation/Symbol;

    .line 31
    new-instance v5, Lorg/ejml/equation/Symbol;

    move-object v4, v5

    const-string v6, "RDIVIDE"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lorg/ejml/equation/Symbol;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/ejml/equation/Symbol;->RDIVIDE:Lorg/ejml/equation/Symbol;

    .line 32
    new-instance v6, Lorg/ejml/equation/Symbol;

    move-object v5, v6

    const-string v7, "POWER"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lorg/ejml/equation/Symbol;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/ejml/equation/Symbol;->POWER:Lorg/ejml/equation/Symbol;

    .line 33
    new-instance v7, Lorg/ejml/equation/Symbol;

    move-object v6, v7

    const-string v8, "PERIOD"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lorg/ejml/equation/Symbol;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/ejml/equation/Symbol;->PERIOD:Lorg/ejml/equation/Symbol;

    .line 34
    new-instance v8, Lorg/ejml/equation/Symbol;

    move-object v7, v8

    const-string v9, "ELEMENT_TIMES"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lorg/ejml/equation/Symbol;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/ejml/equation/Symbol;->ELEMENT_TIMES:Lorg/ejml/equation/Symbol;

    .line 35
    new-instance v9, Lorg/ejml/equation/Symbol;

    move-object v8, v9

    const-string v10, "ELEMENT_DIVIDE"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lorg/ejml/equation/Symbol;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/ejml/equation/Symbol;->ELEMENT_DIVIDE:Lorg/ejml/equation/Symbol;

    .line 36
    new-instance v10, Lorg/ejml/equation/Symbol;

    move-object v9, v10

    const-string v11, "ELEMENT_POWER"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lorg/ejml/equation/Symbol;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/ejml/equation/Symbol;->ELEMENT_POWER:Lorg/ejml/equation/Symbol;

    .line 37
    new-instance v11, Lorg/ejml/equation/Symbol;

    move-object v10, v11

    const-string v12, "ASSIGN"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lorg/ejml/equation/Symbol;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/ejml/equation/Symbol;->ASSIGN:Lorg/ejml/equation/Symbol;

    .line 38
    new-instance v12, Lorg/ejml/equation/Symbol;

    move-object v11, v12

    const-string v13, "PAREN_LEFT"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lorg/ejml/equation/Symbol;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/ejml/equation/Symbol;->PAREN_LEFT:Lorg/ejml/equation/Symbol;

    .line 39
    new-instance v13, Lorg/ejml/equation/Symbol;

    move-object v12, v13

    const-string v14, "PAREN_RIGHT"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lorg/ejml/equation/Symbol;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/ejml/equation/Symbol;->PAREN_RIGHT:Lorg/ejml/equation/Symbol;

    .line 40
    new-instance v14, Lorg/ejml/equation/Symbol;

    move-object v13, v14

    const-string v15, "BRACKET_LEFT"

    move-object/from16 v23, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lorg/ejml/equation/Symbol;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/ejml/equation/Symbol;->BRACKET_LEFT:Lorg/ejml/equation/Symbol;

    .line 41
    new-instance v0, Lorg/ejml/equation/Symbol;

    move-object v14, v0

    const-string v15, "BRACKET_RIGHT"

    move-object/from16 v24, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lorg/ejml/equation/Symbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ejml/equation/Symbol;->BRACKET_RIGHT:Lorg/ejml/equation/Symbol;

    .line 42
    new-instance v0, Lorg/ejml/equation/Symbol;

    move-object v15, v0

    const-string v1, "GREATER_THAN"

    move-object/from16 v25, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/ejml/equation/Symbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ejml/equation/Symbol;->GREATER_THAN:Lorg/ejml/equation/Symbol;

    .line 43
    new-instance v0, Lorg/ejml/equation/Symbol;

    move-object/from16 v16, v0

    const-string v1, "LESS_THAN"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/ejml/equation/Symbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ejml/equation/Symbol;->LESS_THAN:Lorg/ejml/equation/Symbol;

    .line 44
    new-instance v0, Lorg/ejml/equation/Symbol;

    move-object/from16 v17, v0

    const/4 v1, 0x0

    sget-object v1, Lcom/infinite/core/MTx/eQuC;->njAESMEaCkOrI:Ljava/lang/String;

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/ejml/equation/Symbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ejml/equation/Symbol;->GREATER_THAN_EQ:Lorg/ejml/equation/Symbol;

    .line 45
    new-instance v0, Lorg/ejml/equation/Symbol;

    move-object/from16 v18, v0

    const-string v1, "LESS_THAN_EQ"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lorg/ejml/equation/Symbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ejml/equation/Symbol;->LESS_THAN_EQ:Lorg/ejml/equation/Symbol;

    .line 46
    new-instance v0, Lorg/ejml/equation/Symbol;

    move-object/from16 v19, v0

    const-string v1, "COMMA"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lorg/ejml/equation/Symbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ejml/equation/Symbol;->COMMA:Lorg/ejml/equation/Symbol;

    .line 47
    new-instance v0, Lorg/ejml/equation/Symbol;

    move-object/from16 v20, v0

    const-string v1, "TRANSPOSE"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lorg/ejml/equation/Symbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ejml/equation/Symbol;->TRANSPOSE:Lorg/ejml/equation/Symbol;

    .line 48
    new-instance v0, Lorg/ejml/equation/Symbol;

    move-object/from16 v21, v0

    const-string v1, "COLON"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lorg/ejml/equation/Symbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ejml/equation/Symbol;->COLON:Lorg/ejml/equation/Symbol;

    .line 49
    new-instance v0, Lorg/ejml/equation/Symbol;

    move-object/from16 v22, v0

    const-string v1, "SEMICOLON"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lorg/ejml/equation/Symbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ejml/equation/Symbol;->SEMICOLON:Lorg/ejml/equation/Symbol;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    .line 26
    filled-new-array/range {v0 .. v22}, [Lorg/ejml/equation/Symbol;

    move-result-object v0

    sput-object v0, Lorg/ejml/equation/Symbol;->$VALUES:[Lorg/ejml/equation/Symbol;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static lookup(C)Lorg/ejml/equation/Symbol;
    .locals 3

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    .line 72
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :pswitch_0
    sget-object p0, Lorg/ejml/equation/Symbol;->POWER:Lorg/ejml/equation/Symbol;

    return-object p0

    .line 66
    :pswitch_1
    sget-object p0, Lorg/ejml/equation/Symbol;->BRACKET_RIGHT:Lorg/ejml/equation/Symbol;

    return-object p0

    .line 59
    :pswitch_2
    sget-object p0, Lorg/ejml/equation/Symbol;->LDIVIDE:Lorg/ejml/equation/Symbol;

    return-object p0

    .line 65
    :pswitch_3
    sget-object p0, Lorg/ejml/equation/Symbol;->BRACKET_LEFT:Lorg/ejml/equation/Symbol;

    return-object p0

    .line 67
    :pswitch_4
    sget-object p0, Lorg/ejml/equation/Symbol;->GREATER_THAN:Lorg/ejml/equation/Symbol;

    return-object p0

    .line 62
    :pswitch_5
    sget-object p0, Lorg/ejml/equation/Symbol;->ASSIGN:Lorg/ejml/equation/Symbol;

    return-object p0

    .line 68
    :pswitch_6
    sget-object p0, Lorg/ejml/equation/Symbol;->LESS_THAN:Lorg/ejml/equation/Symbol;

    return-object p0

    .line 70
    :pswitch_7
    sget-object p0, Lorg/ejml/equation/Symbol;->SEMICOLON:Lorg/ejml/equation/Symbol;

    return-object p0

    .line 69
    :pswitch_8
    sget-object p0, Lorg/ejml/equation/Symbol;->COLON:Lorg/ejml/equation/Symbol;

    return-object p0

    .line 60
    :pswitch_9
    sget-object p0, Lorg/ejml/equation/Symbol;->RDIVIDE:Lorg/ejml/equation/Symbol;

    return-object p0

    .line 53
    :pswitch_a
    sget-object p0, Lorg/ejml/equation/Symbol;->PERIOD:Lorg/ejml/equation/Symbol;

    return-object p0

    .line 57
    :pswitch_b
    sget-object p0, Lorg/ejml/equation/Symbol;->MINUS:Lorg/ejml/equation/Symbol;

    return-object p0

    .line 54
    :pswitch_c
    sget-object p0, Lorg/ejml/equation/Symbol;->COMMA:Lorg/ejml/equation/Symbol;

    return-object p0

    .line 56
    :pswitch_d
    sget-object p0, Lorg/ejml/equation/Symbol;->PLUS:Lorg/ejml/equation/Symbol;

    return-object p0

    .line 58
    :pswitch_e
    sget-object p0, Lorg/ejml/equation/Symbol;->TIMES:Lorg/ejml/equation/Symbol;

    return-object p0

    .line 64
    :pswitch_f
    sget-object p0, Lorg/ejml/equation/Symbol;->PAREN_RIGHT:Lorg/ejml/equation/Symbol;

    return-object p0

    .line 63
    :pswitch_10
    sget-object p0, Lorg/ejml/equation/Symbol;->PAREN_LEFT:Lorg/ejml/equation/Symbol;

    return-object p0

    .line 55
    :pswitch_11
    sget-object p0, Lorg/ejml/equation/Symbol;->TRANSPOSE:Lorg/ejml/equation/Symbol;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5b
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static lookupElementWise(C)Lorg/ejml/equation/Symbol;
    .locals 3

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5e

    if-ne p0, v0, :cond_0

    .line 79
    sget-object p0, Lorg/ejml/equation/Symbol;->ELEMENT_POWER:Lorg/ejml/equation/Symbol;

    return-object p0

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown element-wise type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    sget-object p0, Lorg/ejml/equation/Symbol;->ELEMENT_DIVIDE:Lorg/ejml/equation/Symbol;

    return-object p0

    .line 77
    :cond_2
    sget-object p0, Lorg/ejml/equation/Symbol;->ELEMENT_TIMES:Lorg/ejml/equation/Symbol;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/ejml/equation/Symbol;
    .locals 1

    .line 26
    const-class v0, Lorg/ejml/equation/Symbol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/ejml/equation/Symbol;

    return-object p0
.end method

.method public static values()[Lorg/ejml/equation/Symbol;
    .locals 1

    .line 26
    sget-object v0, Lorg/ejml/equation/Symbol;->$VALUES:[Lorg/ejml/equation/Symbol;

    invoke-virtual {v0}, [Lorg/ejml/equation/Symbol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/ejml/equation/Symbol;

    return-object v0
.end method
