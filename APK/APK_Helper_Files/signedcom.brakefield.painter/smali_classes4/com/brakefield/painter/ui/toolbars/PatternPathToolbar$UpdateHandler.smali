.class Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$UpdateHandler;
.super Ljava/lang/Object;
.source "PatternPathToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateHandler"
.end annotation


# instance fields
.field private final observeCopies:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final observeJitterAngle:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final observeJitterSize:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final patternPathTool:Lcom/brakefield/painter/nativeobjs/tools/PatternPathToolNative;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/nativeobjs/tools/PatternPathToolNative;Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;)V
    .locals 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$UpdateHandler;->patternPathTool:Lcom/brakefield/painter/nativeobjs/tools/PatternPathToolNative;

    .line 116
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$UpdateHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$UpdateHandler$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$UpdateHandler;->observeCopies:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 117
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$UpdateHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$UpdateHandler$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$UpdateHandler;->observeJitterSize:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 118
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$UpdateHandler$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$UpdateHandler$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$UpdateHandler;->observeJitterAngle:Lcom/brakefield/infinitestudio/ui/components/Observe;

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;Ljava/lang/Integer;)V
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;->copiesSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/PullButton;->setProgress(I)V

    return-void
.end method

.method static synthetic lambda$new$1(Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;Ljava/lang/Integer;)V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;->jitterSizeSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/PullButton;->setProgress(I)V

    return-void
.end method

.method static synthetic lambda$new$2(Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;Ljava/lang/Integer;)V
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/brakefield/painter/databinding/PatternPathToolbarBinding;->jitterAngleSlider:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/PullButton;->setProgress(I)V

    return-void
.end method


# virtual methods
.method update()V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$UpdateHandler;->observeCopies:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$UpdateHandler;->patternPathTool:Lcom/brakefield/painter/nativeobjs/tools/PatternPathToolNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/PatternPathToolNative;->getSpacing()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$UpdateHandler;->observeJitterSize:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$UpdateHandler;->patternPathTool:Lcom/brakefield/painter/nativeobjs/tools/PatternPathToolNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/PatternPathToolNative;->getJitterSize()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$UpdateHandler;->observeJitterAngle:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/PatternPathToolbar$UpdateHandler;->patternPathTool:Lcom/brakefield/painter/nativeobjs/tools/PatternPathToolNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/PatternPathToolNative;->getJitterAngle()F

    move-result v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    return-void
.end method
