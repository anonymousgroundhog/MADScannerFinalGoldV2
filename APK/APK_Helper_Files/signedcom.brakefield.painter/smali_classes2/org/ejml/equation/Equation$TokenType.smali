.class public final enum Lorg/ejml/equation/Equation$TokenType;
.super Ljava/lang/Enum;
.source "Equation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ejml/equation/Equation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "TokenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/ejml/equation/Equation$TokenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/ejml/equation/Equation$TokenType;

.field public static final enum FLOAT:Lorg/ejml/equation/Equation$TokenType;

.field public static final enum FLOAT_EXP:Lorg/ejml/equation/Equation$TokenType;

.field public static final enum INTEGER:Lorg/ejml/equation/Equation$TokenType;

.field public static final enum UNKNOWN:Lorg/ejml/equation/Equation$TokenType;

.field public static final enum WORD:Lorg/ejml/equation/Equation$TokenType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1583
    new-instance v0, Lorg/ejml/equation/Equation$TokenType;

    const-string v1, "WORD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/ejml/equation/Equation$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ejml/equation/Equation$TokenType;->WORD:Lorg/ejml/equation/Equation$TokenType;

    .line 1584
    new-instance v1, Lorg/ejml/equation/Equation$TokenType;

    const-string v2, "INTEGER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/ejml/equation/Equation$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/ejml/equation/Equation$TokenType;->INTEGER:Lorg/ejml/equation/Equation$TokenType;

    .line 1585
    new-instance v2, Lorg/ejml/equation/Equation$TokenType;

    const-string v3, "FLOAT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/ejml/equation/Equation$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/ejml/equation/Equation$TokenType;->FLOAT:Lorg/ejml/equation/Equation$TokenType;

    .line 1586
    new-instance v3, Lorg/ejml/equation/Equation$TokenType;

    const-string v4, "FLOAT_EXP"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/ejml/equation/Equation$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/ejml/equation/Equation$TokenType;->FLOAT_EXP:Lorg/ejml/equation/Equation$TokenType;

    .line 1587
    new-instance v4, Lorg/ejml/equation/Equation$TokenType;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/ejml/equation/Equation$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/ejml/equation/Equation$TokenType;->UNKNOWN:Lorg/ejml/equation/Equation$TokenType;

    .line 1582
    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/ejml/equation/Equation$TokenType;

    move-result-object v0

    sput-object v0, Lorg/ejml/equation/Equation$TokenType;->$VALUES:[Lorg/ejml/equation/Equation$TokenType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1582
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/ejml/equation/Equation$TokenType;
    .locals 1

    .line 1582
    const-class v0, Lorg/ejml/equation/Equation$TokenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/ejml/equation/Equation$TokenType;

    return-object p0
.end method

.method public static values()[Lorg/ejml/equation/Equation$TokenType;
    .locals 1

    .line 1582
    sget-object v0, Lorg/ejml/equation/Equation$TokenType;->$VALUES:[Lorg/ejml/equation/Equation$TokenType;

    invoke-virtual {v0}, [Lorg/ejml/equation/Equation$TokenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/ejml/equation/Equation$TokenType;

    return-object v0
.end method
