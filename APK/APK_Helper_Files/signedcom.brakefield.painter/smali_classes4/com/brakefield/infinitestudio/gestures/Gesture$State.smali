.class public final enum Lcom/brakefield/infinitestudio/gestures/Gesture$State;
.super Ljava/lang/Enum;
.source "Gesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/gestures/Gesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/brakefield/infinitestudio/gestures/Gesture$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brakefield/infinitestudio/gestures/Gesture$State;

.field public static final enum ACTIVE:Lcom/brakefield/infinitestudio/gestures/Gesture$State;

.field public static final enum COMPLETE:Lcom/brakefield/infinitestudio/gestures/Gesture$State;

.field public static final enum IGNORE:Lcom/brakefield/infinitestudio/gestures/Gesture$State;

.field public static final enum POSSIBLE:Lcom/brakefield/infinitestudio/gestures/Gesture$State;


# direct methods
.method private static synthetic $values()[Lcom/brakefield/infinitestudio/gestures/Gesture$State;
    .locals 4

    .line 25
    sget-object v0, Lcom/brakefield/infinitestudio/gestures/Gesture$State;->POSSIBLE:Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    sget-object v1, Lcom/brakefield/infinitestudio/gestures/Gesture$State;->ACTIVE:Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    sget-object v2, Lcom/brakefield/infinitestudio/gestures/Gesture$State;->IGNORE:Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    sget-object v3, Lcom/brakefield/infinitestudio/gestures/Gesture$State;->COMPLETE:Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    filled-new-array {v0, v1, v2, v3}, [Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    const-string v1, "POSSIBLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/gestures/Gesture$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/gestures/Gesture$State;->POSSIBLE:Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    new-instance v0, Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    const-string v1, "ACTIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/gestures/Gesture$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/gestures/Gesture$State;->ACTIVE:Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    new-instance v0, Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    const-string v1, "IGNORE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/gestures/Gesture$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/gestures/Gesture$State;->IGNORE:Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    new-instance v0, Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    const-string v1, "COMPLETE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/gestures/Gesture$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/gestures/Gesture$State;->COMPLETE:Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    .line 25
    invoke-static {}, Lcom/brakefield/infinitestudio/gestures/Gesture$State;->$values()[Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/gestures/Gesture$State;->$VALUES:[Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/brakefield/infinitestudio/gestures/Gesture$State;
    .locals 1

    .line 25
    const-class v0, Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    return-object p0
.end method

.method public static values()[Lcom/brakefield/infinitestudio/gestures/Gesture$State;
    .locals 1

    .line 25
    sget-object v0, Lcom/brakefield/infinitestudio/gestures/Gesture$State;->$VALUES:[Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    invoke-virtual {v0}, [Lcom/brakefield/infinitestudio/gestures/Gesture$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    return-object v0
.end method
