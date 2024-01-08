.class Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
.source "HomeMainViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->setup(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/gestures/GestureLayout;Lcom/brakefield/infinitestudio/ImportIntentLaunchers;)V
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
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$collectionGestures:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

.field final synthetic val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic val$ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;Landroidx/recyclerview/widget/RecyclerView;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/infinitestudio/gestures/GestureLayout;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    iput-object p5, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;->val$collectionGestures:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public addSections(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;)V
    .locals 3

    .line 95
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$CreateProjectSection;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;

    invoke-static {v1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;

    invoke-static {v2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->access$100(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$CreateProjectSection;-><init>(Landroid/content/res/Resources;Ljava/util/List;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;

    .line 96
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ProjectsSection;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;

    invoke-static {v2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->access$200(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ProjectsSection;-><init>(Landroid/view/View;Ljava/util/List;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;

    return-void
.end method

.method public getSidePadding()Lcom/brakefield/infinitestudio/ui/layout/Padding;
    .locals 1

    .line 145
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/collections/CollectionPadding;->NormalPadding()Lcom/brakefield/infinitestudio/ui/layout/Padding;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onItemClick$0$com-brakefield-painter-ui-viewcontrollers-HomeMainViewController$1(Landroid/view/View;Landroid/app/Activity;Lcom/brakefield/painter/PainterProjectStore$Project;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 6

    .line 0
    const v0, 0x7f0a045c

    .line 113
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/widget/ImageView;

    .line 114
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 116
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

    .line 118
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 121
    :goto_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;)Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 122
    iget-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;

    invoke-static {p3}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;)Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    move-result-object p3

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result p4

    invoke-virtual {p3, p4, p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->getMarginAt(II)F

    move-result p1

    float-to-int v5, p1

    .line 123
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->access$600(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;)Lcom/brakefield/painter/ZoomViewAnimator;

    move-result-object v0

    move-object v1, p2

    move-object v2, p5

    invoke-virtual/range {v0 .. v5}, Lcom/brakefield/painter/ZoomViewAnimator;->animateToEditor(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;Landroid/view/View;I)V

    .line 124
    invoke-virtual {p5}, Lcom/brakefield/painter/ui/SimpleUI;->getSharedMessageHandler()Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->dismissProgress()V

    return-void
.end method

.method synthetic lambda$onItemClick$1$com-brakefield-painter-ui-viewcontrollers-HomeMainViewController$1(Landroid/view/View;Landroid/app/Activity;Lcom/brakefield/painter/PainterProjectStore$Project;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 8

    .line 112
    new-instance v7, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1$$ExternalSyntheticLambda3;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;Landroid/view/View;Landroid/app/Activity;Lcom/brakefield/painter/PainterProjectStore$Project;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {p1, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$onItemClick$2$com-brakefield-painter-ui-viewcontrollers-HomeMainViewController$1(Landroid/view/View;Landroid/app/Activity;Lcom/brakefield/painter/PainterProjectStore$Project;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 8

    .line 112
    new-instance v7, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1$$ExternalSyntheticLambda1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;Landroid/view/View;Landroid/app/Activity;Lcom/brakefield/painter/PainterProjectStore$Project;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/painter/ui/SimpleUI;)V

    sput-object v7, Lcom/brakefield/painter/PainterGraphicsRenderer;->loadProjectListener:Ljava/lang/Runnable;

    .line 126
    invoke-virtual {p3}, Lcom/brakefield/painter/PainterProjectStore$Project;->getLocation()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->loadProject:Ljava/lang/String;

    .line 127
    invoke-virtual {p5}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method synthetic lambda$onItemLongClick$3$com-brakefield-painter-ui-viewcontrollers-HomeMainViewController$1()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->access$402(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    return-void
.end method

.method public onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)V
    .locals 8

    .line 100
    instance-of p1, p3, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$CreateProjectOption;

    if-eqz p1, :cond_0

    .line 101
    check-cast p3, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$CreateProjectOption;

    .line 102
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p3, p1, v0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$CreateProjectOption;->onClick(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V

    goto :goto_0

    .line 103
    :cond_0
    instance-of p1, p3, Lcom/brakefield/painter/PainterProjectStore$Project;

    if-eqz p1, :cond_2

    .line 104
    check-cast p3, Lcom/brakefield/painter/PainterProjectStore$Project;

    .line 105
    invoke-virtual {p3}, Lcom/brakefield/painter/PainterProjectStore$Project;->isTemplate()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 106
    iget-object p1, p3, Lcom/brakefield/painter/PainterProjectStore$Project;->directory:Ljava/lang/String;

    iget-object p3, p3, Lcom/brakefield/painter/PainterProjectStore$Project;->name:Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/brakefield/painter/PainterLib;->duplicateProjectTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/brakefield/painter/PainterProjectStore;->getProject(Ljava/lang/String;)Lcom/brakefield/painter/PainterProjectStore$Project;

    move-result-object p3

    .line 110
    :cond_1
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->getSharedMessageHandler()Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->showProgress()V

    .line 111
    new-instance p1, Lcom/brakefield/painter/PainterProjectStore$OpenProjectTask;

    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;->val$activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    new-instance v7, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1$$ExternalSyntheticLambda0;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;Landroid/view/View;Landroid/app/Activity;Lcom/brakefield/painter/PainterProjectStore$Project;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-direct {p1, p3, v7}, Lcom/brakefield/painter/PainterProjectStore$OpenProjectTask;-><init>(Lcom/brakefield/painter/PainterProjectStore$Project;Ljava/lang/Runnable;)V

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Void;

    .line 128
    invoke-virtual {p1, p2, p3}, Lcom/brakefield/painter/PainterProjectStore$OpenProjectTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    :goto_0
    return-void
.end method

.method public onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)Z
    .locals 3

    .line 133
    instance-of p1, p3, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$CreateProjectOption;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 134
    :cond_0
    instance-of p1, p3, Lcom/brakefield/painter/PainterProjectStore$Project;

    if-eqz p1, :cond_1

    .line 135
    check-cast p3, Lcom/brakefield/painter/PainterProjectStore$Project;

    .line 136
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-static {p1, v1, v2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->access$300(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/PainterProjectStore$Project;)Ljava/util/List;

    move-result-object p1

    .line 137
    new-instance p3, Lcom/brakefield/infinitestudio/CustomDialog;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p3, v1}, Lcom/brakefield/infinitestudio/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 138
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p3, v2, p2, p1}, Lcom/brakefield/infinitestudio/CustomDialog;->showDropDown(Landroid/content/Context;Landroid/view/View;Ljava/util/List;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->access$402(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 139
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->access$400(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;)Landroid/widget/PopupWindow;

    move-result-object p1

    new-instance p2, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;)V

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 140
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;->val$collectionGestures:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    return v0
.end method
