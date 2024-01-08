.class public final enum Lorg/ejml/equation/VariableScalar$Type;
.super Ljava/lang/Enum;
.source "VariableScalar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ejml/equation/VariableScalar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/ejml/equation/VariableScalar$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/ejml/equation/VariableScalar$Type;

.field public static final enum COMPLEX:Lorg/ejml/equation/VariableScalar$Type;

.field public static final enum DOUBLE:Lorg/ejml/equation/VariableScalar$Type;

.field public static final enum INTEGER:Lorg/ejml/equation/VariableScalar$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 52
    new-instance v0, Lorg/ejml/equation/VariableScalar$Type;

    const-string v1, "INTEGER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/ejml/equation/VariableScalar$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ejml/equation/VariableScalar$Type;->INTEGER:Lorg/ejml/equation/VariableScalar$Type;

    .line 53
    new-instance v1, Lorg/ejml/equation/VariableScalar$Type;

    const-string v2, "DOUBLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/ejml/equation/VariableScalar$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/ejml/equation/VariableScalar$Type;->DOUBLE:Lorg/ejml/equation/VariableScalar$Type;

    .line 54
    new-instance v2, Lorg/ejml/equation/VariableScalar$Type;

    const-string v3, "COMPLEX"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/ejml/equation/VariableScalar$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/ejml/equation/VariableScalar$Type;->COMPLEX:Lorg/ejml/equation/VariableScalar$Type;

    .line 51
    filled-new-array {v0, v1, v2}, [Lorg/ejml/equation/VariableScalar$Type;

    move-result-object v0

    sput-object v0, Lorg/ejml/equation/VariableScalar$Type;->$VALUES:[Lorg/ejml/equation/VariableScalar$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/ejml/equation/VariableScalar$Type;
    .locals 1

    .line 51
    const-class v0, Lorg/ejml/equation/VariableScalar$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/ejml/equation/VariableScalar$Type;

    return-object p0
.end method

.method public static values()[Lorg/ejml/equation/VariableScalar$Type;
    .locals 1

    .line 51
    sget-object v0, Lorg/ejml/equation/VariableScalar$Type;->$VALUES:[Lorg/ejml/equation/VariableScalar$Type;

    invoke-virtual {v0}, [Lorg/ejml/equation/VariableScalar$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/ejml/equation/VariableScalar$Type;

    return-object v0
.end method
