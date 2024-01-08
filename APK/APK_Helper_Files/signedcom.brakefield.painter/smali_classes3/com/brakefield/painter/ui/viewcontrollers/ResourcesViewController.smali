.class public abstract Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;
.super Lcom/brakefield/painter/ui/viewcontrollers/ViewController;
.source "ResourcesViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;,
        Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$OnResourceSelectedListener;,
        Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ImportResourceTask;,
        Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ResourceSection;,
        Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ResourceViewHolder;
    }
.end annotation


# static fields
.field public static final MAX_RESOURCE_QUALITY:F = 2048.0f


# instance fields
.field private final importedResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;",
            ">;"
        }
    .end annotation
.end field

.field private final presetResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;",
            ">;"
        }
    .end annotation
.end field

.field private res:Landroid/content/res/Resources;

.field private viewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController<",
            "Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ViewController;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->importedResources:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->presetResources:Ljava/util/List;

    .line 82
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->loadResources()V

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;)Landroid/content/res/Resources;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->res:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$100(Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->importedResources:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->presetResources:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;)Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->viewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->loadImportedResources()V

    return-void
.end method

.method static synthetic lambda$getView$0(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 1

    .line 127
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic lambda$getView$2(Landroid/view/View;I)V
    .locals 1

    .line 137
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private loadImportedResources()V
    .locals 7

    .line 97
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->importedResources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 98
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->getImportedResourcesFilePath()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Lcom/brakefield/infinitestudio/FileManager;->getFilesSorted(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 101
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    iget-object v5, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->importedResources:Ljava/util/List;

    new-instance v6, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;

    invoke-static {v0, v4}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, p0, v4}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private loadPresetResources()V
    .locals 6

    .line 91
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->presetResources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 92
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->getPresetResources()[I

    move-result-object v0

    .line 93
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->presetResources:Ljava/util/List;

    new-instance v5, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;

    invoke-direct {v5, p0, v3}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private loadResources()V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->loadPresetResources()V

    .line 87
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->loadImportedResources()V

    return-void
.end method


# virtual methods
.method public getCollectionViewControllerDelegate(Landroid/app/Activity;Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$OnResourceSelectedListener;)Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$OnResourceSelectedListener;",
            ")",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;",
            ">;"
        }
    .end annotation

    .line 210
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->res:Landroid/content/res/Resources;

    .line 211
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$OnResourceSelectedListener;Landroid/app/Activity;)V

    return-object v0
.end method

.method abstract getImportedResourcesFilePath()Ljava/lang/String;
.end method

.method abstract getPresetResources()[I
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method abstract getUIBindingKey()Ljava/lang/String;
.end method

.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$OnResourceSelectedListener;Ljava/lang/Class;Lcom/brakefield/infinitestudio/ImportIntentLaunchers;)Landroid/view/View;
    .locals 3

    .line 111
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/ResourcesViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/ResourcesViewControllerBinding;

    move-result-object v0

    .line 113
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->res:Landroid/content/res/Resources;

    .line 115
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ResourcesViewControllerBinding;->title:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    new-instance v1, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-direct {v1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;-><init>()V

    iput-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->viewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    .line 118
    iget-object v2, v0, Lcom/brakefield/painter/databinding/ResourcesViewControllerBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->getCollectionViewControllerDelegate(Landroid/app/Activity;Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$OnResourceSelectedListener;)Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->setup(Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    .line 120
    iget-object p2, v0, Lcom/brakefield/painter/databinding/ResourcesViewControllerBinding;->add:Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 121
    iget-object p2, v0, Lcom/brakefield/painter/databinding/ResourcesViewControllerBinding;->add:Landroid/widget/ImageView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->getUIBindingKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_add"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0663

    invoke-virtual {p2, v2, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 122
    iget-object p2, v0, Lcom/brakefield/painter/databinding/ResourcesViewControllerBinding;->add:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 123
    iget-object p2, v0, Lcom/brakefield/painter/databinding/ResourcesViewControllerBinding;->add:Landroid/widget/ImageView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p3, p1, p4}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;Ljava/lang/Class;Landroid/app/Activity;Lcom/brakefield/infinitestudio/ImportIntentLaunchers;)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    invoke-virtual {v0}, Lcom/brakefield/painter/databinding/ResourcesViewControllerBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public importResourceAndRefresh(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/brakefield/painter/FileImporter$ImportUri;)V
    .locals 1

    .line 244
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ImportResourceTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ImportResourceTask;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;Landroid/content/Context;Landroid/content/ContentResolver;Lcom/brakefield/painter/FileImporter$ImportUri;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {v0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ImportResourceTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method synthetic lambda$getView$1$com-brakefield-painter-ui-viewcontrollers-ResourcesViewController(Landroid/app/Activity;Lcom/brakefield/painter/FileImporter$ImportUri;)V
    .locals 1

    .line 133
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->importResourceAndRefresh(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/brakefield/painter/FileImporter$ImportUri;)V

    .line 134
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->loadImportedResources()V

    .line 135
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->viewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    return-void
.end method

.method synthetic lambda$getView$3$com-brakefield-painter-ui-viewcontrollers-ResourcesViewController(Landroid/app/Activity;Landroid/view/View;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    .line 132
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;Landroid/app/Activity;)V

    new-instance p1, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$$ExternalSyntheticLambda3;

    invoke-direct {p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$$ExternalSyntheticLambda3;-><init>(Landroid/view/View;)V

    invoke-static {p3, p4, v0, p1}, Lcom/brakefield/painter/FileImporter;->processUri(Landroid/content/Context;Landroid/net/Uri;Lcom/brakefield/painter/FileImporter$UriHandler;Lcom/brakefield/painter/FileImporter$MessageHandler;)V

    return-void
.end method

.method synthetic lambda$getView$4$com-brakefield-painter-ui-viewcontrollers-ResourcesViewController(Ljava/lang/Class;Landroid/app/Activity;Lcom/brakefield/infinitestudio/ImportIntentLaunchers;Landroid/view/View;)V
    .locals 3

    .line 0
    if-eqz p1, :cond_0

    .line 126
    new-instance v0, Lcom/brakefield/infinitestudio/MenuOption;

    const v1, 0x7f1200db

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;Ljava/lang/Class;)V

    const p1, 0x7f0804d3

    invoke-direct {v0, v1, p1, v2}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 131
    :goto_0
    new-instance p1, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2, p4}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;Landroid/app/Activity;Landroid/view/View;)V

    invoke-static {p2, p4, v0, p3, p1}, Lcom/brakefield/infinitestudio/ImportOptions;->showOptions(Landroid/app/Activity;Landroid/view/View;Lcom/brakefield/infinitestudio/MenuOption;Lcom/brakefield/infinitestudio/ImportIntentLaunchers;Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ResultCallback;)V

    return-void
.end method

.method public setCollectionViewController(Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController<",
            "Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;",
            ">;)V"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->viewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    return-void
.end method
