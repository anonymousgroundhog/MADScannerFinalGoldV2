.class Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;
.super Ljava/lang/Object;
.source "CreateProjectViewController.java"

# interfaces
.implements Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$Section;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PresetsSection"
.end annotation


# instance fields
.field private final collectionViewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController<",
            "Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$OnPresetSelected;

.field private presets:Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetsNative;

.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$OnPresetSelected;)V
    .locals 0

    .line 794
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 790
    new-instance p1, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-direct {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;->collectionViewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    .line 795
    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;->listener:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$OnPresetSelected;

    return-void
.end method

.method static synthetic access$2000(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;)Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetsNative;
    .locals 0

    .line 788
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;->presets:Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetsNative;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;)Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$OnPresetSelected;
    .locals 0

    .line 788
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;->listener:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$OnPresetSelected;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;Landroid/content/Context;Landroid/view/View;Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;)V
    .locals 0

    .line 788
    invoke-direct {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;->showPresetOptions(Landroid/content/Context;Landroid/view/View;Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;)V

    return-void
.end method

.method private deletePreset(Landroid/content/Context;Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;)V
    .locals 6

    const v1, 0x7f120a11

    const v2, 0x7f1200fd

    const v3, 0x7f12009e

    .line 847
    new-instance v4, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;)V

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/brakefield/infinitestudio/Dialogs;->showAlert(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private renamePreset(Landroid/content/Context;Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;)V
    .locals 2

    .line 840
    invoke-virtual {p2}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;)V

    const p2, 0x7f120a47

    invoke-static {p1, p2, v0, v1}, Lcom/brakefield/infinitestudio/Dialogs;->showTextInputDialog(Landroid/content/Context;ILjava/lang/String;Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method private showPresetOptions(Landroid/content/Context;Landroid/view/View;Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;)V
    .locals 6

    .line 832
    new-instance v0, Lcom/brakefield/infinitestudio/CustomDialog;

    invoke-direct {v0, p1}, Lcom/brakefield/infinitestudio/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 833
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 834
    new-instance v2, Lcom/brakefield/infinitestudio/MenuOption;

    const v3, 0x7f120a47

    invoke-static {v3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p1, p3}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;Landroid/content/Context;Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;)V

    const v5, 0x7f080439

    invoke-direct {v2, v3, v5, v4}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 835
    new-instance v2, Lcom/brakefield/infinitestudio/MenuOption;

    const v3, 0x7f1200fd

    invoke-static {v3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, p1, p3}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;Landroid/content/Context;Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;)V

    const p3, 0x7f08013e

    invoke-direct {v2, v3, p3, v4}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 836
    invoke-virtual {v0, p1, p2, v1}, Lcom/brakefield/infinitestudio/CustomDialog;->showDropDown(Landroid/content/Context;Landroid/view/View;Ljava/util/List;)Landroid/widget/PopupWindow;

    return-void
.end method


# virtual methods
.method synthetic lambda$deletePreset$3$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$PresetsSection(Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 848
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;->presets:Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetsNative;

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetsNative;->deletePreset(Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;)V

    .line 849
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;->collectionViewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    return-void
.end method

.method synthetic lambda$renamePreset$2$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$PresetsSection(Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;Ljava/lang/String;)V
    .locals 1

    .line 841
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;->presets:Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetsNative;

    invoke-virtual {v0, p1, p2}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetsNative;->renamePreset(Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;Ljava/lang/String;)V

    .line 842
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;->collectionViewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    return-void
.end method

.method synthetic lambda$showPresetOptions$0$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$PresetsSection(Landroid/content/Context;Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;)V
    .locals 0

    .line 834
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;->renamePreset(Landroid/content/Context;Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;)V

    return-void
.end method

.method synthetic lambda$showPresetOptions$1$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$PresetsSection(Landroid/content/Context;Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;)V
    .locals 0

    .line 835
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;->deletePreset(Landroid/content/Context;Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;)V

    return-void
.end method

.method public refresh()V
    .locals 1

    .line 827
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;->collectionViewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    return-void
.end method

.method public setup(Landroid/app/Activity;)V
    .locals 3

    .line 800
    new-instance v0, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetsNative;

    invoke-direct {v0}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetsNative;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;->presets:Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetsNative;

    .line 801
    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    sget v2, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetsNative;->setup(II)V

    .line 802
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;->collectionViewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->presetCollectionView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection$1;

    invoke-direct {v2, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection$1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->setup(Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    .line 820
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;->collectionViewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    new-instance v0, Lcom/brakefield/infinitestudio/ui/collections/SectionBackgroundDecoration;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v1

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/ui/collections/SectionBackgroundDecoration;-><init>(F)V

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public updateSection()V
    .locals 0

    return-void
.end method
