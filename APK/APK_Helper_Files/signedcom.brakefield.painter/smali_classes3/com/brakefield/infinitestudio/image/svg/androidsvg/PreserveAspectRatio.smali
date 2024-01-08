.class public Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;
.super Ljava/lang/Object;
.source "PreserveAspectRatio.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;
    }
.end annotation


# static fields
.field public static final BOTTOM:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

.field public static final END:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

.field public static final FULLSCREEN:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

.field public static final FULLSCREEN_START:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

.field public static final LETTERBOX:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

.field public static final START:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

.field public static final STRETCH:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

.field public static final TOP:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

.field public static final UNSCALED:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;


# instance fields
.field private alignment:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

.field private scale:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;->UNSCALED:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    .line 49
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->None:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    invoke-direct {v0, v2, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;->STRETCH:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    .line 58
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->XMidYMid:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;->Meet:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    .line 67
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->XMinYMin:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;->Meet:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;->START:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    .line 76
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMax:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;->Meet:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;->END:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    .line 85
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->XMidYMin:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;->Meet:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;->TOP:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    .line 94
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->XMidYMax:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;->Meet:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;->BOTTOM:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    .line 104
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->XMidYMid:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;->Slice:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;->FULLSCREEN:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    .line 114
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;->XMinYMin:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;->Slice:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;-><init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;->FULLSCREEN_START:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    return-void
.end method

.method constructor <init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;->alignment:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    .line 172
    iput-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;->scale:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 205
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 207
    :cond_2
    check-cast p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    .line 208
    iget-object v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;->alignment:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    iget-object v3, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;->alignment:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;->scale:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;->scale:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public getAlignment()Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;->alignment:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Alignment;

    return-object v0
.end method

.method public getScale()Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;->scale:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;

    return-object v0
.end method
