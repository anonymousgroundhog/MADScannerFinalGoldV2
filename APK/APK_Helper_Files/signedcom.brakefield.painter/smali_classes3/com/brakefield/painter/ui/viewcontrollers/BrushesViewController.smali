.class public Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;
.super Ljava/lang/Object;
.source "BrushesViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushSectionedRecyclerViewAdapter;,
        Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderSectionedRecyclerViewAdapter;,
        Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFoldersSection;,
        Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderViewHolder;,
        Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderDragView;,
        Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushDragView;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private binding:Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;

.field private final brushCollectionViewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController<",
            "Lcom/brakefield/painter/brushes/brushfolders/Brush;",
            ">;"
        }
    .end annotation
.end field

.field private brushFolderDragListener:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;

.field private brushFolders:Landroidx/recyclerview/widget/RecyclerView;

.field private final brushPackManager:Lcom/brakefield/painter/brushes/BrushPackManager;

.field private brushPresets:Landroidx/recyclerview/widget/RecyclerView;

.field private brushPreview:Landroid/widget/ImageView;

.field private brushPreviewName:Landroid/widget/TextView;

.field private cachedView:Landroid/view/View;

.field private favorites:Landroid/widget/ImageView;

.field private final folderCollectionViewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController<",
            "Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;",
            ">;"
        }
    .end annotation
.end field

.field private optionsPopup:Landroid/widget/PopupWindow;

.field private readyDragView:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;

.field private showFolders:Landroid/widget/ImageView;

.field private ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushPackManager;->getInstance()Lcom/brakefield/painter/brushes/BrushPackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushPackManager:Lcom/brakefield/painter/brushes/BrushPackManager;

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->binding:Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;

    .line 70
    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->cachedView:Landroid/view/View;

    .line 71
    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->activity:Landroid/app/Activity;

    .line 72
    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushPresets:Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushFolders:Landroidx/recyclerview/widget/RecyclerView;

    .line 74
    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    .line 75
    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushPreview:Landroid/widget/ImageView;

    .line 76
    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushPreviewName:Landroid/widget/TextView;

    .line 77
    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->favorites:Landroid/widget/ImageView;

    .line 78
    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->showFolders:Landroid/widget/ImageView;

    .line 79
    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->optionsPopup:Landroid/widget/PopupWindow;

    .line 80
    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->readyDragView:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;

    .line 218
    new-instance v0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushCollectionViewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    .line 403
    new-instance v0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->folderCollectionViewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)Lcom/brakefield/painter/brushes/BrushPackManager;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushPackManager:Lcom/brakefield/painter/brushes/BrushPackManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)Lcom/brakefield/painter/ui/SimpleUI;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    return-object p0
.end method

.method static synthetic access$200(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)Landroid/app/Activity;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Lcom/brakefield/painter/brushes/brushfolders/Brush;Landroid/view/View;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->showBrushOptions(Lcom/brakefield/painter/brushes/brushfolders/Brush;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->binding:Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;

    return-object p0
.end method

.method static synthetic access$502(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;)Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->readyDragView:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Landroid/content/Context;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->createNewFolder(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$700(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->refreshPresets()V

    return-void
.end method

.method static synthetic access$800(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;Landroid/view/View;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->showFolderOptions(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;Landroid/view/View;)V

    return-void
.end method

.method private createNewFolder(Landroid/content/Context;)V
    .locals 3

    .line 590
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->activity:Landroid/app/Activity;

    const v0, 0x7f1201c3

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)V

    const v2, 0x7f12099b

    invoke-static {p1, v2, v0, v1}, Lcom/brakefield/infinitestudio/Dialogs;->showTextInputDialog(Landroid/content/Context;ILjava/lang/String;Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method private deleteFolder(Landroid/content/Context;Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)V
    .locals 6

    .line 615
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->activity:Landroid/app/Activity;

    const v1, 0x7f120a11

    const v2, 0x7f1200fd

    const v3, 0x7f12009e

    new-instance v4, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)V

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/brakefield/infinitestudio/Dialogs;->showAlert(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private hideBrush(Lcom/brakefield/painter/brushes/brushfolders/Brush;)V
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushPackManager:Lcom/brakefield/painter/brushes/BrushPackManager;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/brushes/BrushPackManager;->hideBrush(Lcom/brakefield/painter/brushes/brushfolders/Brush;)V

    .line 659
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->refreshPresets()V

    return-void
.end method

.method private hideFolder(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)V
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushPackManager:Lcom/brakefield/painter/brushes/BrushPackManager;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/brushes/BrushPackManager;->hideFolder(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)V

    .line 606
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->folderCollectionViewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    .line 607
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->refreshPresets()V

    return-void
.end method

.method private refreshPresets()V
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushPackManager:Lcom/brakefield/painter/brushes/BrushPackManager;

    invoke-virtual {v0}, Lcom/brakefield/painter/brushes/BrushPackManager;->refreshSelectedFolder()V

    .line 203
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushPresets:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->setupBrushCollection(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 205
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->showFavorties()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->favorites:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->favorites:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    :goto_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->folderCollectionViewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    .line 210
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushPackManager:Lcom/brakefield/painter/brushes/BrushPackManager;

    invoke-virtual {v0}, Lcom/brakefield/painter/brushes/BrushPackManager;->hasHiddenFolders()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->showFolders:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->showFolders:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private removeBrush(Lcom/brakefield/painter/brushes/brushfolders/Brush;)V
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushPackManager:Lcom/brakefield/painter/brushes/BrushPackManager;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/brushes/BrushPackManager;->removeBrush(Lcom/brakefield/painter/brushes/brushfolders/Brush;)V

    .line 654
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->refreshPresets()V

    return-void
.end method

.method private renameFolder(Landroid/content/Context;Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)V
    .locals 2

    .line 598
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->activity:Landroid/app/Activity;

    iget-object v0, p2, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->displayName:Ljava/lang/String;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda11;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)V

    const p2, 0x7f12099b

    invoke-static {p1, p2, v0, v1}, Lcom/brakefield/infinitestudio/Dialogs;->showTextInputDialog(Landroid/content/Context;ILjava/lang/String;Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method private restoreFolder(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)V
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushPackManager:Lcom/brakefield/painter/brushes/BrushPackManager;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/brushes/BrushPackManager;->restoreFolder(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)V

    .line 624
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->refreshPresets()V

    return-void
.end method

.method private setupBrushCollection(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 7

    .line 222
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 224
    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushSectionedRecyclerViewAdapter;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushSectionedRecyclerViewAdapter;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)V

    .line 225
    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$1;

    invoke-direct {v2, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v1, v2}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushSectionedRecyclerViewAdapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 232
    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$2;

    invoke-direct {v2, p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$2;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Landroid/content/res/Resources;)V

    .line 260
    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$3;

    invoke-direct {v3, p0, p1, v1, v2}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$3;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    .line 267
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 269
    iget-object v4, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->binding:Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;

    iget-object v4, v4, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->brushCollectionGestures:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    new-instance v5, Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture$Single;

    new-instance v6, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda22;

    invoke-direct {v6, p0, v3}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda22;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;)V

    invoke-direct {v5, v0, v6}, Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture$Single;-><init>(Landroid/content/res/Resources;Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture$Listener;)V

    invoke-virtual {v4, v5}, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->addGesture(Lcom/brakefield/infinitestudio/gestures/Gesture;)V

    .line 288
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushCollectionViewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {v0, p1, v1, v2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->setup(Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    return-void
.end method

.method private setupFolderCollection(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 9

    .line 406
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 408
    new-instance v7, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderSectionedRecyclerViewAdapter;

    invoke-direct {v7, p0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderSectionedRecyclerViewAdapter;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)V

    .line 409
    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$4;

    invoke-direct {v1, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$4;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v7, v1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderSectionedRecyclerViewAdapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 416
    new-instance v8, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$5;

    invoke-direct {v8, p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$5;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Landroid/content/res/Resources;)V

    .line 443
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$7;

    new-instance v5, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$6;

    invoke-direct {v5, p0, v7}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$6;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderSectionedRecyclerViewAdapter;)V

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, v7

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$7;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DropHandler;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushFolderDragListener:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;

    .line 468
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 470
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->folderCollectionViewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {v0, p1, v7, v8}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->setup(Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    return-void
.end method

.method private setupView()V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->binding:Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->brushFavorite:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->favorites:Landroid/widget/ImageView;

    .line 113
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->binding:Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->brushFavorite:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 114
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->binding:Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->brushFavorite:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 115
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->binding:Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->brushFavorite:Landroid/widget/ImageView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda24;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->binding:Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->brushSettings:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 122
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->binding:Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->brushSettings:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 123
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->binding:Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->brushSettings:Landroid/widget/ImageView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda25;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->binding:Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->showBrushFolders:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->showFolders:Landroid/widget/ImageView;

    .line 126
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->binding:Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->showBrushFolders:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 127
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->binding:Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->showBrushFolders:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 128
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->binding:Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->showBrushFolders:Landroid/widget/ImageView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda26;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->binding:Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->brushOptions:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 135
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->binding:Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->brushOptions:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 136
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->binding:Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->brushOptions:Landroid/widget/ImageView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda27;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->binding:Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->brushCard:Lcom/brakefield/painter/databinding/BrushCardBinding;

    invoke-virtual {v0}, Lcom/brakefield/painter/databinding/BrushCardBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->binding:Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->brushCard:Lcom/brakefield/painter/databinding/BrushCardBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushCardBinding;->brushPreview:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushPreview:Landroid/widget/ImageView;

    .line 141
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->binding:Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->brushCard:Lcom/brakefield/painter/databinding/BrushCardBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushCardBinding;->brushName:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    iput-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushPreviewName:Landroid/widget/TextView;

    .line 142
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 143
    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda28;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->binding:Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->brushAdd:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 146
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->binding:Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->brushAdd:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 148
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->binding:Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->brushAdd:Landroid/widget/ImageView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda29;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->activity:Landroid/app/Activity;

    const v1, 0x7f010024

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 162
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/animation/Easing;->In()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0x258

    .line 163
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 164
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->binding:Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->brushAdd:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 166
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->binding:Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->brushFolders:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushFolders:Landroidx/recyclerview/widget/RecyclerView;

    .line 168
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushPackManager:Lcom/brakefield/painter/brushes/BrushPackManager;

    invoke-virtual {v0}, Lcom/brakefield/painter/brushes/BrushPackManager;->setupIfNeeded()V

    .line 169
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushFolders:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->setupFolderCollection(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 171
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->binding:Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->brushPresets:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushPresets:Landroidx/recyclerview/widget/RecyclerView;

    .line 172
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->refreshPresets()V

    .line 173
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->favorites:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->updateFavoritesIcon(Landroid/widget/ImageView;)V

    .line 174
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->folderCollectionViewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    .line 175
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->updatePreview()V

    return-void
.end method

.method private shareBrush(Landroid/app/Activity;Lcom/brakefield/painter/brushes/brushfolders/Brush;)V
    .locals 0

    .line 633
    sput-object p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->shareActivity:Landroid/app/Activity;

    .line 634
    sput-object p2, Lcom/brakefield/painter/PainterGraphicsRenderer;->shareBrush:Lcom/brakefield/painter/brushes/brushfolders/Brush;

    .line 635
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method private shareFolder(Landroid/content/Context;Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)V
    .locals 2

    .line 611
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushPackManager:Lcom/brakefield/painter/brushes/BrushPackManager;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushFolders:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0, v1, p2}, Lcom/brakefield/painter/brushes/BrushPackManager;->shareFolder(Landroid/app/Activity;Landroid/view/View;Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)V

    return-void
.end method

.method private showBrushOptions(Lcom/brakefield/painter/brushes/brushfolders/Brush;Landroid/view/View;)V
    .locals 8

    .line 555
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 556
    new-instance v1, Lcom/brakefield/infinitestudio/CustomDialog;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/brakefield/infinitestudio/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 558
    new-instance v2, Lcom/brakefield/infinitestudio/MenuOption;

    const v3, 0x7f120a47

    invoke-static {v3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda14;

    invoke-direct {v4, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda14;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Lcom/brakefield/painter/brushes/brushfolders/Brush;)V

    const v5, 0x7f080439

    invoke-direct {v2, v3, v5, v4}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    new-instance v2, Lcom/brakefield/infinitestudio/MenuOption;

    const v3, 0x7f120127

    invoke-static {v3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda15;

    invoke-direct {v4, p0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda15;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Lcom/brakefield/painter/brushes/brushfolders/Brush;Landroid/view/View;)V

    const v5, 0x7f080147

    invoke-direct {v2, v3, v5, v4}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    new-instance v2, Lcom/brakefield/infinitestudio/MenuOption;

    const v3, 0x7f120a8b

    invoke-static {v3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda16;

    invoke-direct {v4, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda16;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Lcom/brakefield/painter/brushes/brushfolders/Brush;)V

    const v5, 0x7f080476

    invoke-direct {v2, v3, v5, v4}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    new-instance v2, Lcom/brakefield/infinitestudio/MenuOption;

    const v3, 0x7f120a50

    invoke-static {v3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda17;

    invoke-direct {v4, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda17;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Lcom/brakefield/painter/brushes/brushfolders/Brush;)V

    const v5, 0x7f08043b

    invoke-direct {v2, v3, v5, v4}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushType()I

    move-result v2

    const v3, 0x7f0800fb

    const v4, 0x7f120a45

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushType()I

    move-result v2

    const/16 v5, 0x270f

    if-ne v2, v5, :cond_0

    goto :goto_0

    .line 569
    :cond_0
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushPackManager:Lcom/brakefield/painter/brushes/BrushPackManager;

    invoke-virtual {v2, p1}, Lcom/brakefield/painter/brushes/BrushPackManager;->selectedFolderHasBrush(Lcom/brakefield/painter/brushes/brushfolders/Brush;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 570
    new-instance v2, Lcom/brakefield/infinitestudio/MenuOption;

    const v5, 0x7f1201f8

    invoke-static {v5}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda20;

    invoke-direct {v6, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda20;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Lcom/brakefield/painter/brushes/brushfolders/Brush;)V

    const v7, 0x7f0804d6

    invoke-direct {v2, v5, v7, v6}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushPackManager:Lcom/brakefield/painter/brushes/BrushPackManager;

    invoke-virtual {v2, p1}, Lcom/brakefield/painter/brushes/BrushPackManager;->selectedFolderHasDefaultBrush(Lcom/brakefield/painter/brushes/brushfolders/Brush;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lcom/brakefield/infinitestudio/MenuOption;

    invoke-static {v4}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda21;

    invoke-direct {v5, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda21;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Lcom/brakefield/painter/brushes/brushfolders/Brush;)V

    invoke-direct {v2, v4, v3, v5}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 566
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushPackManager:Lcom/brakefield/painter/brushes/BrushPackManager;

    invoke-virtual {v2, p1}, Lcom/brakefield/painter/brushes/BrushPackManager;->canRemoveBrush(Lcom/brakefield/painter/brushes/brushfolders/Brush;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/brakefield/infinitestudio/MenuOption;

    invoke-static {v4}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda18;

    invoke-direct {v5, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda18;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Lcom/brakefield/painter/brushes/brushfolders/Brush;)V

    invoke-direct {v2, v4, v3, v5}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    :cond_2
    new-instance v2, Lcom/brakefield/infinitestudio/MenuOption;

    const v3, 0x7f1200fd

    invoke-static {v3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda19;

    invoke-direct {v4, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda19;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Lcom/brakefield/painter/brushes/brushfolders/Brush;)V

    const p1, 0x7f08013e

    invoke-direct {v2, v3, p1, v4}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p1, p2, v0}, Lcom/brakefield/infinitestudio/CustomDialog;->showDropDown(Landroid/content/Context;Landroid/view/View;Ljava/util/List;)Landroid/widget/PopupWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->optionsPopup:Landroid/widget/PopupWindow;

    .line 576
    new-instance p2, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda23;

    invoke-direct {p2, p0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda23;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)V

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public static showCreateBrushViewController(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0

    .line 628
    new-instance p1, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;

    invoke-direct {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;-><init>()V

    .line 629
    invoke-virtual {p1, p0, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;->show(Landroid/app/Activity;Ljava/lang/String;Lcom/brakefield/painter/ui/SimpleUI;)V

    return-void
.end method

.method private showFavorties()Z
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushPackManager:Lcom/brakefield/painter/brushes/BrushPackManager;

    invoke-virtual {v0}, Lcom/brakefield/painter/brushes/BrushPackManager;->showFavorties()Z

    move-result v0

    return v0
.end method

.method private showFolderOptions(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;Landroid/view/View;)V
    .locals 6

    .line 540
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 542
    new-instance v1, Lcom/brakefield/infinitestudio/CustomDialog;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/brakefield/infinitestudio/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 544
    new-instance v2, Lcom/brakefield/infinitestudio/MenuOption;

    const v3, 0x7f120a47

    invoke-static {v3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)V

    const v5, 0x7f080439

    invoke-direct {v2, v3, v5, v4}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    new-instance v2, Lcom/brakefield/infinitestudio/MenuOption;

    const v3, 0x7f120a8b

    invoke-static {v3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda7;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)V

    const v5, 0x7f080476

    invoke-direct {v2, v3, v5, v4}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    new-instance v2, Lcom/brakefield/infinitestudio/MenuOption;

    const v3, 0x7f1201f8

    invoke-static {v3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda8;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)V

    const v5, 0x7f0804d6

    invoke-direct {v2, v3, v5, v4}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    invoke-virtual {p1}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->canRestore()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/brakefield/infinitestudio/MenuOption;

    const v3, 0x7f120a54

    invoke-static {v3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda9;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)V

    const v5, 0x7f08043d

    invoke-direct {v2, v3, v5, v4}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    :cond_0
    invoke-virtual {p1}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->isCustom()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/brakefield/infinitestudio/MenuOption;

    const v3, 0x7f1200fd

    invoke-static {v3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda10;

    invoke-direct {v4, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda10;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)V

    const p1, 0x7f08013e

    invoke-direct {v2, v3, p1, v4}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    :cond_1
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p1, p2, v0}, Lcom/brakefield/infinitestudio/CustomDialog;->showDropDown(Landroid/content/Context;Landroid/view/View;Ljava/util/List;)Landroid/widget/PopupWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->optionsPopup:Landroid/widget/PopupWindow;

    .line 551
    new-instance p2, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda12;

    invoke-direct {p2, p0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda12;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)V

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method private updateFavoritesIcon(Landroid/widget/ImageView;)V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushPackManager:Lcom/brakefield/painter/brushes/BrushPackManager;

    invoke-virtual {v0}, Lcom/brakefield/painter/brushes/BrushPackManager;->getCurrentBrush()Lcom/brakefield/painter/brushes/brushfolders/Brush;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/brushes/BrushPackManager;->isFavoriteBrush(Lcom/brakefield/painter/brushes/brushfolders/Brush;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, -0xae89

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 194
    :cond_0
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->activity:Landroid/app/Activity;

    .line 86
    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    .line 88
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->cachedView:Landroid/view/View;

    if-nez p2, :cond_0

    .line 89
    invoke-static {}, Lcom/brakefield/infinitestudio/utils/Debugger;->startTracking()V

    .line 90
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->binding:Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;

    .line 91
    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->cachedView:Landroid/view/View;

    const-string p1, "LOAD BRUSHES VIEW CONTROLLER"

    .line 92
    invoke-static {p1}, Lcom/brakefield/infinitestudio/utils/Debugger;->stopTracking(Ljava/lang/String;)J

    .line 95
    :cond_0
    invoke-static {}, Lcom/brakefield/infinitestudio/utils/Debugger;->startTracking()V

    .line 97
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->cachedView:Landroid/view/View;

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 100
    check-cast p2, Landroid/view/ViewGroup;

    .line 101
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 103
    :cond_1
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->setupView()V

    const-string p2, "SHOW BRUSHES VIEW CONTROLLER"

    .line 105
    invoke-static {p2}, Lcom/brakefield/infinitestudio/utils/Debugger;->stopTracking(Ljava/lang/String;)J

    return-object p1
.end method

.method synthetic lambda$createNewFolder$26$com-brakefield-painter-ui-viewcontrollers-BrushesViewController(Ljava/lang/String;)V
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushPackManager:Lcom/brakefield/painter/brushes/BrushPackManager;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/brushes/BrushPackManager;->createNewFolder(Ljava/lang/String;)V

    .line 592
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->folderCollectionViewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    .line 593
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->refreshPresets()V

    return-void
.end method

.method synthetic lambda$deleteFolder$28$com-brakefield-painter-ui-viewcontrollers-BrushesViewController(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 617
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushPackManager:Lcom/brakefield/painter/brushes/BrushPackManager;

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/brushes/BrushPackManager;->deleteFolder(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)V

    .line 618
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->folderCollectionViewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    return-void
.end method

.method synthetic lambda$renameBrush$25$com-brakefield-painter-ui-viewcontrollers-BrushesViewController(Lcom/brakefield/painter/brushes/brushfolders/Brush;Ljava/lang/String;)V
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushPackManager:Lcom/brakefield/painter/brushes/BrushPackManager;

    invoke-virtual {v0, p1, p2}, Lcom/brakefield/painter/brushes/BrushPackManager;->renameBrush(Lcom/brakefield/painter/brushes/brushfolders/Brush;Ljava/lang/String;)V

    .line 582
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->refreshPresets()V

    return-void
.end method

.method synthetic lambda$renameFolder$27$com-brakefield-painter-ui-viewcontrollers-BrushesViewController(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;Ljava/lang/String;)V
    .locals 0

    .line 599
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->rename(Ljava/lang/String;)V

    .line 600
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->folderCollectionViewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    return-void
.end method

.method synthetic lambda$setupBrushCollection$8$com-brakefield-painter-ui-viewcontrollers-BrushesViewController(Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture;Landroid/graphics/PointF;Landroid/graphics/PointF;Z)V
    .locals 0

    .line 276
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->readyDragView:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;

    if-nez p2, :cond_0

    return-void

    .line 277
    :cond_0
    iget p2, p3, Landroid/graphics/PointF;->x:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    iget p5, p4, Landroid/graphics/PointF;->x:F

    iget p4, p4, Landroid/graphics/PointF;->y:F

    invoke-static {p2, p3, p5, p4}, Lcom/brakefield/infinitestudio/geometry/Line;->dist(FFFF)F

    move-result p2

    const/high16 p3, 0x42400000    # 48.0f

    .line 278
    invoke-static {p3}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_2

    .line 279
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->optionsPopup:Landroid/widget/PopupWindow;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 280
    :cond_1
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->readyDragView:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;

    .line 281
    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->setTargetDragView(Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;)V

    .line 282
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushFolderDragListener:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->setTargetDragView(Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;)V

    .line 283
    iget-object p1, p2, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;->view:Landroid/view/View;

    .line 284
    iget-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->readyDragView:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;

    iget-object p3, p3, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;->item:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "object"

    invoke-static {p4, p3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p3

    new-instance p4, Landroid/view/View$DragShadowBuilder;

    invoke-direct {p4, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    const/4 p5, 0x0

    invoke-virtual {p1, p3, p4, p2, p5}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    :cond_2
    return-void
.end method

.method synthetic lambda$setupView$0$com-brakefield-painter-ui-viewcontrollers-BrushesViewController(Landroid/view/View;)V
    .locals 0

    .line 116
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushPackManager:Lcom/brakefield/painter/brushes/BrushPackManager;

    invoke-virtual {p1}, Lcom/brakefield/painter/brushes/BrushPackManager;->toggleFavoriteBrush()V

    .line 117
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->refreshPresets()V

    .line 118
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->binding:Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->brushFavorite:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->updateFavoritesIcon(Landroid/widget/ImageView;)V

    return-void
.end method

.method synthetic lambda$setupView$1$com-brakefield-painter-ui-viewcontrollers-BrushesViewController(Landroid/view/View;)V
    .locals 1

    .line 123
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/brakefield/painter/ui/SimpleUI;->showBrushSettings(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$setupView$2$com-brakefield-painter-ui-viewcontrollers-BrushesViewController(Landroid/view/View;)V
    .locals 0

    .line 129
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushPackManager:Lcom/brakefield/painter/brushes/BrushPackManager;

    invoke-virtual {p1}, Lcom/brakefield/painter/brushes/BrushPackManager;->showAllBrushFolders()V

    .line 130
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->folderCollectionViewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    .line 131
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->refreshPresets()V

    return-void
.end method

.method synthetic lambda$setupView$3$com-brakefield-painter-ui-viewcontrollers-BrushesViewController(Landroid/view/View;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushPackManager:Lcom/brakefield/painter/brushes/BrushPackManager;

    invoke-virtual {v0}, Lcom/brakefield/painter/brushes/BrushPackManager;->getCurrentBrush()Lcom/brakefield/painter/brushes/brushfolders/Brush;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->showBrushOptions(Lcom/brakefield/painter/brushes/brushfolders/Brush;Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$setupView$4$com-brakefield-painter-ui-viewcontrollers-BrushesViewController(Landroid/view/View;)V
    .locals 0

    .line 143
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->binding:Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushesViewControllerBinding;->brushOptions:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->callOnClick()Z

    return-void
.end method

.method synthetic lambda$setupView$5$com-brakefield-painter-ui-viewcontrollers-BrushesViewController(Landroid/view/View;)V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-static {v0, p1, v1, v2}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->showCreateBrushViewController(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Lcom/brakefield/painter/ui/SimpleUI;)V

    return-void
.end method

.method synthetic lambda$setupView$6$com-brakefield-painter-ui-viewcontrollers-BrushesViewController()V
    .locals 3

    .line 155
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->activity:Landroid/app/Activity;

    const-class v2, Lcom/brakefield/painter/activities/ActivityBrushes;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$setupView$7$com-brakefield-painter-ui-viewcontrollers-BrushesViewController(Landroid/view/View;)V
    .locals 6

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    new-instance v1, Lcom/brakefield/infinitestudio/CustomDialog;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/brakefield/infinitestudio/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 153
    new-instance v2, Lcom/brakefield/infinitestudio/MenuOption;

    const v3, 0x7f12007a

    invoke-static {v3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda30;

    invoke-direct {v4, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda30;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Landroid/view/View;)V

    const v5, 0x7f080132

    invoke-direct {v2, v3, v5, v4}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v2, Lcom/brakefield/infinitestudio/MenuOption;

    const v3, 0x7f1200db

    invoke-static {v3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)V

    const v5, 0x7f0804d3

    invoke-direct {v2, v3, v5, v4}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2, p1, v0}, Lcom/brakefield/infinitestudio/CustomDialog;->showDropDown(Landroid/content/Context;Landroid/view/View;Ljava/util/List;)Landroid/widget/PopupWindow;

    return-void
.end method

.method synthetic lambda$showBrushOptions$15$com-brakefield-painter-ui-viewcontrollers-BrushesViewController(Lcom/brakefield/painter/brushes/brushfolders/Brush;)V
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->activity:Landroid/app/Activity;

    invoke-virtual {p0, v0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->renameBrush(Landroid/content/Context;Lcom/brakefield/painter/brushes/brushfolders/Brush;)V

    return-void
.end method

.method synthetic lambda$showBrushOptions$16$com-brakefield-painter-ui-viewcontrollers-BrushesViewController()V
    .locals 0

    .line 560
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->refreshPresets()V

    return-void
.end method

.method synthetic lambda$showBrushOptions$17$com-brakefield-painter-ui-viewcontrollers-BrushesViewController(Lcom/brakefield/painter/brushes/brushfolders/Brush;Landroid/view/View;)V
    .locals 2

    .line 560
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushPackManager:Lcom/brakefield/painter/brushes/BrushPackManager;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda13;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/brakefield/painter/brushes/BrushPackManager;->duplicateBrush(Lcom/brakefield/painter/brushes/brushfolders/Brush;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 561
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method synthetic lambda$showBrushOptions$18$com-brakefield-painter-ui-viewcontrollers-BrushesViewController(Lcom/brakefield/painter/brushes/brushfolders/Brush;)V
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->activity:Landroid/app/Activity;

    invoke-direct {p0, v0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->shareBrush(Landroid/app/Activity;Lcom/brakefield/painter/brushes/brushfolders/Brush;)V

    return-void
.end method

.method synthetic lambda$showBrushOptions$19$com-brakefield-painter-ui-viewcontrollers-BrushesViewController(Lcom/brakefield/painter/brushes/brushfolders/Brush;)V
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->activity:Landroid/app/Activity;

    invoke-virtual {p0, v0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->showResetBrushPrompt(Landroid/app/Activity;Lcom/brakefield/painter/brushes/brushfolders/Brush;)V

    return-void
.end method

.method synthetic lambda$showBrushOptions$20$com-brakefield-painter-ui-viewcontrollers-BrushesViewController(Lcom/brakefield/painter/brushes/brushfolders/Brush;)V
    .locals 0

    .line 566
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->removeBrush(Lcom/brakefield/painter/brushes/brushfolders/Brush;)V

    return-void
.end method

.method synthetic lambda$showBrushOptions$21$com-brakefield-painter-ui-viewcontrollers-BrushesViewController(Lcom/brakefield/painter/brushes/brushfolders/Brush;)V
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->activity:Landroid/app/Activity;

    invoke-virtual {p0, v0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->showDeleteBrushPrompt(Landroid/app/Activity;Lcom/brakefield/painter/brushes/brushfolders/Brush;)V

    return-void
.end method

.method synthetic lambda$showBrushOptions$22$com-brakefield-painter-ui-viewcontrollers-BrushesViewController(Lcom/brakefield/painter/brushes/brushfolders/Brush;)V
    .locals 0

    .line 570
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->hideBrush(Lcom/brakefield/painter/brushes/brushfolders/Brush;)V

    return-void
.end method

.method synthetic lambda$showBrushOptions$23$com-brakefield-painter-ui-viewcontrollers-BrushesViewController(Lcom/brakefield/painter/brushes/brushfolders/Brush;)V
    .locals 0

    .line 571
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->removeBrush(Lcom/brakefield/painter/brushes/brushfolders/Brush;)V

    return-void
.end method

.method synthetic lambda$showBrushOptions$24$com-brakefield-painter-ui-viewcontrollers-BrushesViewController()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    .line 576
    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->optionsPopup:Landroid/widget/PopupWindow;

    return-void
.end method

.method synthetic lambda$showDeleteBrushPrompt$30$com-brakefield-painter-ui-viewcontrollers-BrushesViewController(Lcom/brakefield/painter/brushes/brushfolders/Brush;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 669
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushPackManager:Lcom/brakefield/painter/brushes/BrushPackManager;

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/brushes/BrushPackManager;->deleteBrush(Lcom/brakefield/painter/brushes/brushfolders/Brush;)V

    .line 670
    invoke-virtual {p1}, Lcom/brakefield/painter/brushes/brushfolders/Brush;->getId()I

    move-result p2

    invoke-virtual {p1}, Lcom/brakefield/painter/brushes/brushfolders/Brush;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/brakefield/painter/PainterLib;->deleteBrush(ILjava/lang/String;)V

    .line 671
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->refreshPresets()V

    .line 672
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->folderCollectionViewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    return-void
.end method

.method synthetic lambda$showFolderOptions$10$com-brakefield-painter-ui-viewcontrollers-BrushesViewController(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)V
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->activity:Landroid/app/Activity;

    invoke-direct {p0, v0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->shareFolder(Landroid/content/Context;Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)V

    return-void
.end method

.method synthetic lambda$showFolderOptions$11$com-brakefield-painter-ui-viewcontrollers-BrushesViewController(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)V
    .locals 0

    .line 546
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->hideFolder(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)V

    return-void
.end method

.method synthetic lambda$showFolderOptions$12$com-brakefield-painter-ui-viewcontrollers-BrushesViewController(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)V
    .locals 0

    .line 547
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->restoreFolder(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)V

    return-void
.end method

.method synthetic lambda$showFolderOptions$13$com-brakefield-painter-ui-viewcontrollers-BrushesViewController(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)V
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->activity:Landroid/app/Activity;

    invoke-direct {p0, v0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->deleteFolder(Landroid/content/Context;Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)V

    return-void
.end method

.method synthetic lambda$showFolderOptions$14$com-brakefield-painter-ui-viewcontrollers-BrushesViewController()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    .line 551
    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->optionsPopup:Landroid/widget/PopupWindow;

    return-void
.end method

.method synthetic lambda$showFolderOptions$9$com-brakefield-painter-ui-viewcontrollers-BrushesViewController(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)V
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->activity:Landroid/app/Activity;

    invoke-direct {p0, v0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->renameFolder(Landroid/content/Context;Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)V

    return-void
.end method

.method synthetic lambda$showResetBrushPrompt$29$com-brakefield-painter-ui-viewcontrollers-BrushesViewController(Lcom/brakefield/painter/brushes/brushfolders/Brush;Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 644
    invoke-virtual {p1}, Lcom/brakefield/painter/brushes/brushfolders/Brush;->getId()I

    move-result p3

    invoke-virtual {p1}, Lcom/brakefield/painter/brushes/brushfolders/Brush;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/brakefield/painter/PainterLib;->resetBrush(ILjava/lang/String;)V

    .line 645
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushPackManager:Lcom/brakefield/painter/brushes/BrushPackManager;

    invoke-virtual {p1}, Lcom/brakefield/painter/brushes/BrushPackManager;->refreshSelectedFolder()V

    .line 646
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->refreshPresets()V

    .line 647
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->updatePreview()V

    .line 648
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method public renameBrush(Landroid/content/Context;Lcom/brakefield/painter/brushes/brushfolders/Brush;)V
    .locals 2

    .line 580
    invoke-virtual {p2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Lcom/brakefield/painter/brushes/brushfolders/Brush;)V

    const p2, 0x7f12099b

    invoke-static {p1, p2, v0, v1}, Lcom/brakefield/infinitestudio/Dialogs;->showTextInputDialog(Landroid/content/Context;ILjava/lang/String;Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method public showDeleteBrushPrompt(Landroid/app/Activity;Lcom/brakefield/painter/brushes/brushfolders/Brush;)V
    .locals 6

    .line 663
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushPackManager:Lcom/brakefield/painter/brushes/BrushPackManager;

    invoke-virtual {v0, p2}, Lcom/brakefield/painter/brushes/BrushPackManager;->isLastBrush(Lcom/brakefield/painter/brushes/brushfolders/Brush;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 665
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushPackManager:Lcom/brakefield/painter/brushes/BrushPackManager;

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/brushes/BrushPackManager;->deleteBrush(Lcom/brakefield/painter/brushes/brushfolders/Brush;)V

    return-void

    :cond_0
    const v1, 0x7f120a0f

    const v2, 0x7f1200fd

    const v3, 0x7f12009e

    .line 668
    new-instance v4, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Lcom/brakefield/painter/brushes/brushfolders/Brush;)V

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/brakefield/infinitestudio/Dialogs;->showAlert(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public showResetBrushPrompt(Landroid/app/Activity;Lcom/brakefield/painter/brushes/brushfolders/Brush;)V
    .locals 6

    const v1, 0x7f120a24

    const v2, 0x7f120a50

    const v3, 0x7f12009e

    .line 643
    new-instance v4, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, p2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Lcom/brakefield/painter/brushes/brushfolders/Brush;Landroid/app/Activity;)V

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/brakefield/infinitestudio/Dialogs;->showAlert(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public updatePreview()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushPreview:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 181
    :cond_0
    sput-object v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->updateBrushPreviewFixed:Landroid/widget/ImageView;

    .line 182
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    .line 184
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushPreviewName:Landroid/widget/TextView;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushType()I

    move-result v1

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushCustomName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/brakefield/painter/PainterLib;->getBrushDisplayName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushType()I

    move-result v0

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushCustomName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/brakefield/painter/PainterLib;->isColorBrush(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushPreview:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->brushPreview:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 189
    :goto_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->favorites:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->updateFavoritesIcon(Landroid/widget/ImageView;)V

    return-void
.end method
