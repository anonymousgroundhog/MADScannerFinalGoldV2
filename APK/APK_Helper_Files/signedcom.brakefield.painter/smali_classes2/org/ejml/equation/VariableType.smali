.class public final enum Lorg/ejml/equation/VariableType;
.super Ljava/lang/Enum;
.source "VariableType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/ejml/equation/VariableType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/ejml/equation/VariableType;

.field public static final enum INTEGER_SEQUENCE:Lorg/ejml/equation/VariableType;

.field public static final enum MATRIX:Lorg/ejml/equation/VariableType;

.field public static final enum SCALAR:Lorg/ejml/equation/VariableType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 27
    new-instance v0, Lorg/ejml/equation/VariableType;

    const-string v1, "MATRIX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/ejml/equation/VariableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ejml/equation/VariableType;->MATRIX:Lorg/ejml/equation/VariableType;

    .line 28
    new-instance v1, Lorg/ejml/equation/VariableType;

    const-string v2, "SCALAR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/ejml/equation/VariableType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/ejml/equation/VariableType;->SCALAR:Lorg/ejml/equation/VariableType;

    .line 29
    new-instance v2, Lorg/ejml/equation/VariableType;

    const-string v3, "INTEGER_SEQUENCE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/ejml/equation/VariableType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/ejml/equation/VariableType;->INTEGER_SEQUENCE:Lorg/ejml/equation/VariableType;

    .line 26
    filled-new-array {v0, v1, v2}, [Lorg/ejml/equation/VariableType;

    move-result-object v0

    sput-object v0, Lorg/ejml/equation/VariableType;->$VALUES:[Lorg/ejml/equation/VariableType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/ejml/equation/VariableType;
    .locals 1

    .line 26
    const-class v0, Lorg/ejml/equation/VariableType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/ejml/equation/VariableType;

    return-object p0
.end method

.method public static values()[Lorg/ejml/equation/VariableType;
    .locals 1

    .line 26
    sget-object v0, Lorg/ejml/equation/VariableType;->$VALUES:[Lorg/ejml/equation/VariableType;

    invoke-virtual {v0}, [Lorg/ejml/equation/VariableType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/ejml/equation/VariableType;

    return-object v0
.end method
