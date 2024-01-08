.class synthetic Lorg/ejml/equation/Equation$1;
.super Ljava/lang/Object;
.source "Equation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ejml/equation/Equation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$ejml$equation$Symbol:[I

.field static final synthetic $SwitchMap$org$ejml$equation$VariableType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 740
    invoke-static {}, Lorg/ejml/equation/Symbol;->values()[Lorg/ejml/equation/Symbol;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/ejml/equation/Equation$1;->$SwitchMap$org$ejml$equation$Symbol:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lorg/ejml/equation/Symbol;->COMMA:Lorg/ejml/equation/Symbol;

    invoke-virtual {v2}, Lorg/ejml/equation/Symbol;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lorg/ejml/equation/Equation$1;->$SwitchMap$org$ejml$equation$Symbol:[I

    sget-object v3, Lorg/ejml/equation/Symbol;->BRACKET_LEFT:Lorg/ejml/equation/Symbol;

    invoke-virtual {v3}, Lorg/ejml/equation/Symbol;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lorg/ejml/equation/Equation$1;->$SwitchMap$org$ejml$equation$Symbol:[I

    sget-object v4, Lorg/ejml/equation/Symbol;->BRACKET_RIGHT:Lorg/ejml/equation/Symbol;

    invoke-virtual {v4}, Lorg/ejml/equation/Symbol;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v3, Lorg/ejml/equation/Equation$1;->$SwitchMap$org$ejml$equation$Symbol:[I

    sget-object v4, Lorg/ejml/equation/Symbol;->ELEMENT_DIVIDE:Lorg/ejml/equation/Symbol;

    invoke-virtual {v4}, Lorg/ejml/equation/Symbol;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lorg/ejml/equation/Equation$1;->$SwitchMap$org$ejml$equation$Symbol:[I

    sget-object v4, Lorg/ejml/equation/Symbol;->ELEMENT_TIMES:Lorg/ejml/equation/Symbol;

    invoke-virtual {v4}, Lorg/ejml/equation/Symbol;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lorg/ejml/equation/Equation$1;->$SwitchMap$org$ejml$equation$Symbol:[I

    sget-object v4, Lorg/ejml/equation/Symbol;->ELEMENT_POWER:Lorg/ejml/equation/Symbol;

    invoke-virtual {v4}, Lorg/ejml/equation/Symbol;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    aput v5, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v3, Lorg/ejml/equation/Equation$1;->$SwitchMap$org$ejml$equation$Symbol:[I

    sget-object v4, Lorg/ejml/equation/Symbol;->RDIVIDE:Lorg/ejml/equation/Symbol;

    invoke-virtual {v4}, Lorg/ejml/equation/Symbol;->ordinal()I

    move-result v4

    const/4 v5, 0x7

    aput v5, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v3, Lorg/ejml/equation/Equation$1;->$SwitchMap$org$ejml$equation$Symbol:[I

    sget-object v4, Lorg/ejml/equation/Symbol;->LDIVIDE:Lorg/ejml/equation/Symbol;

    invoke-virtual {v4}, Lorg/ejml/equation/Symbol;->ordinal()I

    move-result v4

    const/16 v5, 0x8

    aput v5, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v3, Lorg/ejml/equation/Equation$1;->$SwitchMap$org$ejml$equation$Symbol:[I

    sget-object v4, Lorg/ejml/equation/Symbol;->TIMES:Lorg/ejml/equation/Symbol;

    invoke-virtual {v4}, Lorg/ejml/equation/Symbol;->ordinal()I

    move-result v4

    const/16 v5, 0x9

    aput v5, v3, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v3, Lorg/ejml/equation/Equation$1;->$SwitchMap$org$ejml$equation$Symbol:[I

    sget-object v4, Lorg/ejml/equation/Symbol;->POWER:Lorg/ejml/equation/Symbol;

    invoke-virtual {v4}, Lorg/ejml/equation/Symbol;->ordinal()I

    move-result v4

    const/16 v5, 0xa

    aput v5, v3, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v3, Lorg/ejml/equation/Equation$1;->$SwitchMap$org$ejml$equation$Symbol:[I

    sget-object v4, Lorg/ejml/equation/Symbol;->PLUS:Lorg/ejml/equation/Symbol;

    invoke-virtual {v4}, Lorg/ejml/equation/Symbol;->ordinal()I

    move-result v4

    const/16 v5, 0xb

    aput v5, v3, v4
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v3, Lorg/ejml/equation/Equation$1;->$SwitchMap$org$ejml$equation$Symbol:[I

    sget-object v4, Lorg/ejml/equation/Symbol;->MINUS:Lorg/ejml/equation/Symbol;

    invoke-virtual {v4}, Lorg/ejml/equation/Symbol;->ordinal()I

    move-result v4

    const/16 v5, 0xc

    aput v5, v3, v4
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v3, Lorg/ejml/equation/Equation$1;->$SwitchMap$org$ejml$equation$Symbol:[I

    sget-object v4, Lorg/ejml/equation/Symbol;->ASSIGN:Lorg/ejml/equation/Symbol;

    invoke-virtual {v4}, Lorg/ejml/equation/Symbol;->ordinal()I

    move-result v4

    const/16 v5, 0xd

    aput v5, v3, v4
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    .line 590
    :catch_c
    invoke-static {}, Lorg/ejml/equation/VariableType;->values()[Lorg/ejml/equation/VariableType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lorg/ejml/equation/Equation$1;->$SwitchMap$org$ejml$equation$VariableType:[I

    :try_start_d
    sget-object v4, Lorg/ejml/equation/VariableType;->MATRIX:Lorg/ejml/equation/VariableType;

    invoke-virtual {v4}, Lorg/ejml/equation/VariableType;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v1, Lorg/ejml/equation/Equation$1;->$SwitchMap$org$ejml$equation$VariableType:[I

    sget-object v3, Lorg/ejml/equation/VariableType;->SCALAR:Lorg/ejml/equation/VariableType;

    invoke-virtual {v3}, Lorg/ejml/equation/VariableType;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lorg/ejml/equation/Equation$1;->$SwitchMap$org$ejml$equation$VariableType:[I

    sget-object v1, Lorg/ejml/equation/VariableType;->INTEGER_SEQUENCE:Lorg/ejml/equation/VariableType;

    invoke-virtual {v1}, Lorg/ejml/equation/VariableType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    return-void
.end method
