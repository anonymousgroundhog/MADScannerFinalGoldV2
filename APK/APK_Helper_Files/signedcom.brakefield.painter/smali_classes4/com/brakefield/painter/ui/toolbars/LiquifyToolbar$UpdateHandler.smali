.class Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler;
.super Ljava/lang/Object;
.source "LiquifyToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateHandler"
.end annotation


# instance fields
.field private final liquifyTool:Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;

.field private final observeBloatSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeCursor:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeLiquifyStrength:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final observePinchSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observePushSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeRestoreSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeRewindSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeTwirlCcwSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeTwirlCwSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;)V
    .locals 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler;->liquifyTool:Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;

    .line 149
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler;->observeLiquifyStrength:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 150
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler;->observeCursor:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 151
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler;->observePushSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 152
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler;->observePinchSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 153
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler$$ExternalSyntheticLambda4;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler;->observeBloatSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 154
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler$$ExternalSyntheticLambda5;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler;->observeTwirlCcwSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 155
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler$$ExternalSyntheticLambda6;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler;->observeTwirlCwSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 156
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler$$ExternalSyntheticLambda7;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler$$ExternalSyntheticLambda7;-><init>(Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler;->observeRestoreSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 157
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler$$ExternalSyntheticLambda8;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler$$ExternalSyntheticLambda8;-><init>(Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler;->observeRewindSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;Ljava/lang/Float;)V
    .locals 1

    .line 149
    iget-object p0, p0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifySlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setProgress(I)V

    return-void
.end method

.method static synthetic lambda$new$1(Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;Ljava/lang/Boolean;)V
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyCursor:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->styleSelectedIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic lambda$new$2(Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;Ljava/lang/Boolean;)V
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyPushImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->styleSelectedIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic lambda$new$3(Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;Ljava/lang/Boolean;)V
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyPinchImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->styleSelectedIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic lambda$new$4(Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;Ljava/lang/Boolean;)V
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyBloatImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->styleSelectedIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic lambda$new$5(Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;Ljava/lang/Boolean;)V
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyTwirlCcwImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->styleSelectedIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic lambda$new$6(Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;Ljava/lang/Boolean;)V
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyTwirlCwImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->styleSelectedIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic lambda$new$7(Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;Ljava/lang/Boolean;)V
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyRestoreImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->styleSelectedIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic lambda$new$8(Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;Ljava/lang/Boolean;)V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/brakefield/painter/databinding/LiquifyToolbar2Binding;->liquifyRewindImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->styleSelectedIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method


# virtual methods
.method update()V
    .locals 5

    .line 161
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler;->observeLiquifyStrength:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler;->liquifyTool:Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;->getIntensity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler;->observeCursor:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler;->liquifyTool:Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;->getDrawCursor()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler;->liquifyTool:Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;->getTemplate()I

    move-result v0

    .line 165
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler;->observePushSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 166
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler;->observePinchSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 167
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler;->observeBloatSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 168
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler;->observeTwirlCcwSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    const/16 v4, 0x8

    if-ne v0, v4, :cond_3

    move v4, v2

    goto :goto_3

    :cond_3
    move v4, v3

    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 169
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler;->observeTwirlCwSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    const/16 v4, 0x9

    if-ne v0, v4, :cond_4

    move v4, v2

    goto :goto_4

    :cond_4
    move v4, v3

    :goto_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 170
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler;->observeRestoreSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    const/4 v4, 0x6

    if-ne v0, v4, :cond_5

    move v4, v2

    goto :goto_5

    :cond_5
    move v4, v3

    :goto_5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 171
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/LiquifyToolbar$UpdateHandler;->observeRewindSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    const/4 v4, 0x7

    if-ne v0, v4, :cond_6

    goto :goto_6

    :cond_6
    move v2, v3

    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    return-void
.end method
