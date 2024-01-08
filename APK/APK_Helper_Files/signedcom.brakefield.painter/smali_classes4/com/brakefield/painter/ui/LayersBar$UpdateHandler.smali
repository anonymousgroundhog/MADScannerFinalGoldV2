.class Lcom/brakefield/painter/ui/LayersBar$UpdateHandler;
.super Ljava/lang/Object;
.source "LayersBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/LayersBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateHandler"
.end annotation


# instance fields
.field private final observeIsFullVersion:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observePanelExpanded:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observePaperColor:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final observeUsesPaperTexture:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/brakefield/painter/databinding/LayersPanelBinding;Lcom/brakefield/infinitestudio/MessageHandler$HandleData;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 2

    .line 797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 798
    new-instance v0, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v1, Lcom/brakefield/painter/ui/LayersBar$UpdateHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p1}, Lcom/brakefield/painter/ui/LayersBar$UpdateHandler$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;Lcom/brakefield/painter/databinding/LayersPanelBinding;)V

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$UpdateHandler;->observePanelExpanded:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 808
    new-instance p2, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/LayersBar$UpdateHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/brakefield/painter/ui/LayersBar$UpdateHandler$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/databinding/LayersPanelBinding;)V

    invoke-direct {p2, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p2, p0, Lcom/brakefield/painter/ui/LayersBar$UpdateHandler;->observePaperColor:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 809
    new-instance p2, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/LayersBar$UpdateHandler$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/brakefield/painter/ui/LayersBar$UpdateHandler$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/databinding/LayersPanelBinding;)V

    invoke-direct {p2, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p2, p0, Lcom/brakefield/painter/ui/LayersBar$UpdateHandler;->observeUsesPaperTexture:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 813
    new-instance p2, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/LayersBar$UpdateHandler$$ExternalSyntheticLambda3;

    invoke-direct {v0, p3, p1}, Lcom/brakefield/painter/ui/LayersBar$UpdateHandler$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/LayersPanelBinding;)V

    invoke-direct {p2, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p2, p0, Lcom/brakefield/painter/ui/LayersBar$UpdateHandler;->observeIsFullVersion:Lcom/brakefield/infinitestudio/ui/components/Observe;

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;Lcom/brakefield/painter/databinding/LayersPanelBinding;Ljava/lang/Boolean;)V
    .locals 1

    .line 799
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 800
    invoke-interface {p0, p2, v0, v0}, Lcom/brakefield/infinitestudio/MessageHandler$HandleData;->handle(Ljava/lang/Object;II)V

    .line 801
    iget-object p0, p1, Lcom/brakefield/painter/databinding/LayersPanelBinding;->backgroundTrayVisibility:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 802
    iget-object p0, p1, Lcom/brakefield/painter/databinding/LayersPanelBinding;->backgroundLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setVisibility(I)V

    goto :goto_0

    .line 804
    :cond_0
    iget-object p0, p1, Lcom/brakefield/painter/databinding/LayersPanelBinding;->backgroundTrayVisibility:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 805
    iget-object p0, p1, Lcom/brakefield/painter/databinding/LayersPanelBinding;->backgroundLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {p0, p2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$new$1(Lcom/brakefield/painter/databinding/LayersPanelBinding;Ljava/lang/Integer;)V
    .locals 0

    .line 808
    iget-object p0, p0, Lcom/brakefield/painter/databinding/LayersPanelBinding;->backgroundColorButton:Lcom/brakefield/infinitestudio/ui/RoundButton;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/RoundButton;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic lambda$new$2(Lcom/brakefield/painter/databinding/LayersPanelBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 810
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/brakefield/painter/databinding/LayersPanelBinding;->backgroundColorButton:Lcom/brakefield/infinitestudio/ui/RoundButton;

    sget-object p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->paperTextureImage:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/RoundButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 811
    :cond_0
    iget-object p0, p0, Lcom/brakefield/painter/databinding/LayersPanelBinding;->backgroundColorButton:Lcom/brakefield/infinitestudio/ui/RoundButton;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/RoundButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$new$3(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/LayersPanelBinding;Ljava/lang/Boolean;)V
    .locals 3

    .line 814
    iget-object v0, p1, Lcom/brakefield/painter/databinding/LayersPanelBinding;->layersAddAdjustmentButton:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;ZZ)V

    .line 815
    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayersPanelBinding;->layersAddGroupButton:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2, v2}, Lcom/brakefield/painter/ui/SimpleUI;->updateProFeatureIndicator(Landroid/view/ViewGroup;ZZ)V

    return-void
.end method


# virtual methods
.method update(Z)V
    .locals 1

    .line 820
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$UpdateHandler;->observePanelExpanded:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 821
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$UpdateHandler;->observeUsesPaperTexture:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->usePaperTexture()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 822
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$UpdateHandler;->observePaperColor:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBackgroundColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 823
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$UpdateHandler;->observeIsFullVersion:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->hasMasterWithoutTrial()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    return-void
.end method
