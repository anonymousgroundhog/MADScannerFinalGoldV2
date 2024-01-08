.class Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler;
.super Ljava/lang/Object;
.source "FillToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/toolbars/FillToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateHandler"
.end annotation


# instance fields
.field private final observeColor:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final observeFillType:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final observeFullVersion:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeLinearOrRadialGradientsSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeMirror:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observePatternFillSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeRepeat:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeSampleFrom:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final observeSolidFillSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeSweepCycles:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final observeSweepFillSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final toolManager:Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;Lcom/brakefield/painter/databinding/FillToolbarBinding;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 1

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler;->toolManager:Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;

    .line 200
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/databinding/FillToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler;->observeSolidFillSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 211
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/databinding/FillToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler;->observeLinearOrRadialGradientsSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 222
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler$$ExternalSyntheticLambda4;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/databinding/FillToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler;->observeSweepFillSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 233
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler$$ExternalSyntheticLambda5;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/databinding/FillToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler;->observePatternFillSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 244
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler$$ExternalSyntheticLambda6;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/painter/databinding/FillToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler;->observeSampleFrom:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 245
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler$$ExternalSyntheticLambda7;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler$$ExternalSyntheticLambda7;-><init>(Lcom/brakefield/painter/databinding/FillToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler;->observeColor:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 246
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler$$ExternalSyntheticLambda8;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler$$ExternalSyntheticLambda8;-><init>(Lcom/brakefield/painter/databinding/FillToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler;->observeRepeat:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 247
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler$$ExternalSyntheticLambda9;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler$$ExternalSyntheticLambda9;-><init>(Lcom/brakefield/painter/databinding/FillToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler;->observeMirror:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 248
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler$$ExternalSyntheticLambda10;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler$$ExternalSyntheticLambda10;-><init>(Lcom/brakefield/painter/databinding/FillToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler;->observeSweepCycles:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 250
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p3, p2}, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/FillToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler;->observeFullVersion:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 254
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler$$ExternalSyntheticLambda2;

    invoke-direct {v0, p3, p2}, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/FillToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler;->observeFillType:Lcom/brakefield/infinitestudio/ui/components/Observe;

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/brakefield/painter/databinding/FillToolbarBinding;Ljava/lang/Boolean;)V
    .locals 1

    .line 201
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 202
    iget-object p1, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->reverse:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    iget-object p1, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->repeat:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    iget-object p1, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->mirror:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    iget-object p1, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->sweepCycles:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/PullButton;->setVisibility(I)V

    .line 206
    iget-object p1, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->settings:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    iget-object p1, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->patternSource:Lcom/brakefield/infinitestudio/ui/RoundButton;

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/RoundButton;->setVisibility(I)V

    .line 208
    iget-object p0, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->color:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$new$1(Lcom/brakefield/painter/databinding/FillToolbarBinding;Ljava/lang/Boolean;)V
    .locals 1

    .line 212
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 213
    iget-object p1, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->reverse:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    iget-object p1, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->repeat:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    iget-object p1, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->mirror:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    iget-object p1, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->sweepCycles:Lcom/brakefield/infinitestudio/ui/PullButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/PullButton;->setVisibility(I)V

    .line 217
    iget-object p1, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->settings:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    iget-object p1, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->patternSource:Lcom/brakefield/infinitestudio/ui/RoundButton;

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/RoundButton;->setVisibility(I)V

    .line 219
    iget-object p0, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->color:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$new$10(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/FillToolbarBinding;Ljava/lang/Integer;)V
    .locals 0

    .line 255
    iget-object p1, p1, Lcom/brakefield/painter/databinding/FillToolbarBinding;->fillSpinner:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->updateUIForView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$new$2(Lcom/brakefield/painter/databinding/FillToolbarBinding;Ljava/lang/Boolean;)V
    .locals 2

    .line 223
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 224
    iget-object p1, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->reverse:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 225
    iget-object p1, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->repeat:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    iget-object p1, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->mirror:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    iget-object p1, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->sweepCycles:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/PullButton;->setVisibility(I)V

    .line 228
    iget-object p1, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->settings:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    iget-object p1, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->patternSource:Lcom/brakefield/infinitestudio/ui/RoundButton;

    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/ui/RoundButton;->setVisibility(I)V

    .line 230
    iget-object p0, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->color:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    invoke-virtual {p0, v1}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$new$3(Lcom/brakefield/painter/databinding/FillToolbarBinding;Ljava/lang/Boolean;)V
    .locals 2

    .line 234
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 235
    iget-object p1, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->reverse:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    iget-object p1, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->repeat:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    iget-object p1, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->mirror:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    iget-object p1, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->sweepCycles:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/PullButton;->setVisibility(I)V

    .line 239
    iget-object p1, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->settings:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    iget-object p1, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->patternSource:Lcom/brakefield/infinitestudio/ui/RoundButton;

    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/ui/RoundButton;->setVisibility(I)V

    .line 241
    iget-object p0, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->color:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$new$4(Lcom/brakefield/painter/databinding/FillToolbarBinding;Ljava/lang/Integer;)V
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->sampleFrom:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method static synthetic lambda$new$5(Lcom/brakefield/painter/databinding/FillToolbarBinding;Ljava/lang/Integer;)V
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->color:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic lambda$new$6(Lcom/brakefield/painter/databinding/FillToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->repeat:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->styleSelectedIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic lambda$new$7(Lcom/brakefield/painter/databinding/FillToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->mirror:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->styleSelectedIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic lambda$new$8(Lcom/brakefield/painter/databinding/FillToolbarBinding;Ljava/lang/Integer;)V
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/brakefield/painter/databinding/FillToolbarBinding;->sweepCycles:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/PullButton;->setProgress(I)V

    return-void
.end method

.method static synthetic lambda$new$9(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/FillToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 251
    iget-object p1, p1, Lcom/brakefield/painter/databinding/FillToolbarBinding;->fillSpinner:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method update()V
    .locals 6

    .line 261
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler;->toolManager:Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getFillTool()Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;

    move-result-object v0

    .line 263
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getTargetLayerId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler;->observeSampleFrom:Lcom/brakefield/infinitestudio/ui/components/Observe;

    const v2, 0x7f08044a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    goto :goto_0

    .line 264
    :cond_0
    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;->getFillSamplesAllLayers()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler;->observeSampleFrom:Lcom/brakefield/infinitestudio/ui/components/Observe;

    const v2, 0x7f080448

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    goto :goto_0

    .line 265
    :cond_1
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler;->observeSampleFrom:Lcom/brakefield/infinitestudio/ui/components/Observe;

    const v2, 0x7f080449

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 267
    :goto_0
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getFillStrictType()I

    move-result v1

    .line 268
    iget-object v2, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler;->observeSolidFillSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 269
    iget-object v2, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler;->observeLinearOrRadialGradientsSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    if-eq v1, v4, :cond_4

    const/4 v5, 0x2

    if-ne v1, v5, :cond_3

    goto :goto_2

    :cond_3
    move v5, v3

    goto :goto_3

    :cond_4
    :goto_2
    move v5, v4

    :goto_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 270
    iget-object v2, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler;->observePatternFillSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    const/4 v5, 0x4

    if-ne v1, v5, :cond_5

    move v5, v4

    goto :goto_4

    :cond_5
    move v5, v3

    :goto_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 271
    iget-object v2, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler;->observeSweepFillSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    const/4 v5, 0x3

    if-ne v1, v5, :cond_6

    move v3, v4

    :cond_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 272
    iget-object v2, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler;->observeColor:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 273
    iget-object v2, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler;->observeRepeat:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;->getFillRepeat()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 274
    iget-object v2, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler;->observeMirror:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;->getFillMirror()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 275
    iget-object v2, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler;->observeSweepCycles:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;->getFillCycles()I

    move-result v0

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 277
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler;->observeFullVersion:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->hasMasterWithoutTrial()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 279
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$UpdateHandler;->observeFillType:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    return-void
.end method
