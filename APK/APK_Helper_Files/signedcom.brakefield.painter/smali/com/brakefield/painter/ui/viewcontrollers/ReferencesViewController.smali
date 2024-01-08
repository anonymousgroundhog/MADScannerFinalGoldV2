.class public Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;
.super Lcom/brakefield/painter/ui/viewcontrollers/ViewController;
.source "ReferencesViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;,
        Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImagesSection;,
        Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImageViewHolder;,
        Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferencesCollectionViewControllerDelegate;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private binding:Lcom/brakefield/painter/databinding/ReferencesViewControllerBinding;

.field private collectionViewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController<",
            "Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;",
            ">;"
        }
    .end annotation
.end field

.field private referenceImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;",
            ">;"
        }
    .end annotation
.end field

.field private res:Landroid/content/res/Resources;

.field private ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ViewController;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;->referenceImages:Ljava/util/List;

    .line 54
    new-instance v0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;->collectionViewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    return-void
.end method

.method static synthetic access$200(Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;)Landroid/content/res/Resources;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;->res:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$300(Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;->referenceImages:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 7

    .line 61
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;->activity:Landroid/app/Activity;

    .line 62
    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    .line 64
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;->res:Landroid/content/res/Resources;

    .line 66
    new-instance v0, Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getReferenceManager()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;-><init>(J)V

    .line 68
    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;->numberOfReferences()I

    move-result v1

    .line 70
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;->referenceImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 72
    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$1;)V

    .line 74
    invoke-virtual {v0, v2}, Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;->referenceLocation(I)Ljava/lang/String;

    move-result-object v4

    .line 75
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCurrentProjectLocation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Resources"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 78
    iput-object v4, v3, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;->location:Ljava/lang/String;

    .line 79
    invoke-virtual {v0, v2}, Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;->isReferenceVisible(I)Z

    move-result v4

    iput-boolean v4, v3, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;->visible:Z

    .line 80
    iput v2, v3, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;->index:I

    .line 82
    iget-object v4, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;->referenceImages:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/brakefield/painter/databinding/ReferencesViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/ReferencesViewControllerBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;->binding:Lcom/brakefield/painter/databinding/ReferencesViewControllerBinding;

    .line 87
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;->collectionViewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ReferencesViewControllerBinding;->grid:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v1, p1, v2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->setup(Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    .line 115
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;->binding:Lcom/brakefield/painter/databinding/ReferencesViewControllerBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/ReferencesViewControllerBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method
