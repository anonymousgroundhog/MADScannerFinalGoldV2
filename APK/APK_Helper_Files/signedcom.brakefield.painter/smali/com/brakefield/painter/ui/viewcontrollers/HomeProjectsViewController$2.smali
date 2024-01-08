.class Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
.source "HomeProjectsViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->setup(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/gestures/GestureLayout;Lcom/brakefield/infinitestudio/ImportIntentLaunchers;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$collectionGestures:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

.field final synthetic val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic val$res:Landroid/content/res/Resources;

.field final synthetic val$ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;Landroid/content/res/Resources;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/gestures/GestureLayout;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;->val$res:Landroid/content/res/Resources;

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    iput-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;->val$activity:Landroid/app/Activity;

    iput-object p5, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p6, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;->val$collectionGestures:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public addSections(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;)V
    .locals 3

    .line 94
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectFoldersSection;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;->val$res:Landroid/content/res/Resources;

    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectFoldersSection;-><init>(Landroid/content/res/Resources;Lcom/brakefield/painter/PainterProjectStore;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;

    .line 95
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSection;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;->val$res:Landroid/content/res/Resources;

    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSection;-><init>(Landroid/content/res/Resources;Lcom/brakefield/painter/PainterProjectStore;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;

    return-void
.end method

.method public getSidePadding()Lcom/brakefield/infinitestudio/ui/layout/Padding;
    .locals 1

    .line 150
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/collections/CollectionPadding;->NormalPadding()Lcom/brakefield/infinitestudio/ui/layout/Padding;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onItemClick$0$com-brakefield-painter-ui-viewcontrollers-HomeProjectsViewController$2(Landroid/view/View;Landroid/app/Activity;Lcom/brakefield/painter/PainterProjectStore$Project;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 6

    .line 0
    const v0, 0x7f0a045c

    .line 115
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/widget/ImageView;

    .line 116
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 118
    :try_start_0
    invoke-virtual {p3}, Lcom/brakefield/painter/PainterProjectStore$Project;->getFullPreviewThumb()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 120
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 123
    :goto_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;)Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 124
    iget-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;

    invoke-static {p3}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;)Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    move-result-object p3

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result p4

    invoke-virtual {p3, p4, p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->getMarginAt(II)F

    move-result p1

    float-to-int v5, p1

    .line 125
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->access$400(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;)Lcom/brakefield/painter/ZoomViewAnimator;

    move-result-object v0

    move-object v1, p2

    move-object v2, p5

    invoke-virtual/range {v0 .. v5}, Lcom/brakefield/painter/ZoomViewAnimator;->animateToEditor(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;Landroid/view/View;I)V

    .line 126
    invoke-virtual {p5}, Lcom/brakefield/painter/ui/SimpleUI;->getSharedMessageHandler()Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->dismissProgress()V

    return-void
.end method

.method synthetic lambda$onItemClick$1$com-brakefield-painter-ui-viewcontrollers-HomeProjectsViewController$2(Landroid/view/View;Landroid/app/Activity;Lcom/brakefield/painter/PainterProjectStore$Project;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 8

    .line 114
    new-instance v7, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2$$ExternalSyntheticLambda0;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;Landroid/view/View;Landroid/app/Activity;Lcom/brakefield/painter/PainterProjectStore$Project;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {p1, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$onItemClick$2$com-brakefield-painter-ui-viewcontrollers-HomeProjectsViewController$2(Landroid/view/View;Landroid/app/Activity;Lcom/brakefield/painter/PainterProjectStore$Project;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 8

    .line 114
    new-instance v7, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2$$ExternalSyntheticLambda2;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;Landroid/view/View;Landroid/app/Activity;Lcom/brakefield/painter/PainterProjectStore$Project;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/painter/ui/SimpleUI;)V

    sput-object v7, Lcom/brakefield/painter/PainterGraphicsRenderer;->loadProjectListener:Ljava/lang/Runnable;

    .line 128
    invoke-virtual {p3}, Lcom/brakefield/painter/PainterProjectStore$Project;->getLocation()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->loadProject:Ljava/lang/String;

    .line 129
    invoke-virtual {p5}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method synthetic lambda$onItemLongClick$3$com-brakefield-painter-ui-viewcontrollers-HomeProjectsViewController$2()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->access$302(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    return-void
.end method

.method public onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)V
    .locals 9

    .line 99
    instance-of p1, p3, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    if-eqz p1, :cond_0

    .line 100
    check-cast p3, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    .line 101
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/brakefield/painter/PainterProjectStore;->openFolder(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)V

    .line 102
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;)Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    .line 103
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->updateHomeTitleBar()V

    goto :goto_0

    .line 104
    :cond_0
    instance-of p1, p3, Lcom/brakefield/painter/PainterProjectStore$Project;

    if-eqz p1, :cond_2

    .line 105
    check-cast p3, Lcom/brakefield/painter/PainterProjectStore$Project;

    .line 106
    invoke-virtual {p3}, Lcom/brakefield/painter/PainterProjectStore$Project;->isTemplate()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 107
    iget-object p1, p3, Lcom/brakefield/painter/PainterProjectStore$Project;->directory:Ljava/lang/String;

    iget-object p3, p3, Lcom/brakefield/painter/PainterProjectStore$Project;->name:Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/brakefield/painter/PainterLib;->duplicateProjectTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 108
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/brakefield/painter/PainterProjectStore;->getProject(Ljava/lang/String;)Lcom/brakefield/painter/PainterProjectStore$Project;

    move-result-object p3

    .line 109
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object p1

    invoke-virtual {p1, p3, v0}, Lcom/brakefield/painter/PainterProjectStore;->insertProject(Lcom/brakefield/infinitestudio/ProjectStore$Project;I)V

    .line 112
    :cond_1
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->getSharedMessageHandler()Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->showProgress()V

    .line 113
    new-instance p1, Lcom/brakefield/painter/PainterProjectStore$OpenProjectTask;

    iget-object v4, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;->val$activity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    new-instance v8, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2$$ExternalSyntheticLambda3;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;Landroid/view/View;Landroid/app/Activity;Lcom/brakefield/painter/PainterProjectStore$Project;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-direct {p1, p3, v8}, Lcom/brakefield/painter/PainterProjectStore$OpenProjectTask;-><init>(Lcom/brakefield/painter/PainterProjectStore$Project;Ljava/lang/Runnable;)V

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p3, v0, [Ljava/lang/Void;

    .line 130
    invoke-virtual {p1, p2, p3}, Lcom/brakefield/painter/PainterProjectStore$OpenProjectTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    :goto_0
    return-void
.end method

.method public onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)Z
    .locals 2

    .line 136
    instance-of p1, p3, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    if-eqz p1, :cond_0

    .line 137
    check-cast p3, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    .line 138
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-static {p1, v0, v1, p3}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->access$100(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 139
    :cond_0
    instance-of p1, p3, Lcom/brakefield/painter/PainterProjectStore$Project;

    if-eqz p1, :cond_1

    .line 140
    check-cast p3, Lcom/brakefield/painter/PainterProjectStore$Project;

    .line 141
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-static {p1, v0, v1, p3}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->access$200(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/PainterProjectStore$Project;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 143
    :goto_0
    new-instance p3, Lcom/brakefield/infinitestudio/CustomDialog;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p3, v0}, Lcom/brakefield/infinitestudio/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 144
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {p3, v1, p2, p1}, Lcom/brakefield/infinitestudio/CustomDialog;->showDropDown(Landroid/content/Context;Landroid/view/View;Ljava/util/List;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->access$302(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 145
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->access$300(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;)Landroid/widget/PopupWindow;

    move-result-object p1

    new-instance p2, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;)V

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 146
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;->val$collectionGestures:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return p2
.end method
