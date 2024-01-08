.class Lcom/brakefield/painter/activities/ActivityMain$2;
.super Ljava/lang/Object;
.source "ActivityMain.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/activities/ActivityMain;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/activities/ActivityMain;

.field final synthetic val$mainContainer:Landroid/view/ViewGroup;

.field final synthetic val$splash:Landroid/view/View;

.field final synthetic val$useNewLowLatencyRenderer:Z


# direct methods
.method constructor <init>(Lcom/brakefield/painter/activities/ActivityMain;Landroid/view/View;ZLandroid/view/ViewGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 264
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain$2;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    iput-object p2, p0, Lcom/brakefield/painter/activities/ActivityMain$2;->val$splash:Landroid/view/View;

    iput-boolean p3, p0, Lcom/brakefield/painter/activities/ActivityMain$2;->val$useNewLowLatencyRenderer:Z

    iput-object p4, p0, Lcom/brakefield/painter/activities/ActivityMain$2;->val$mainContainer:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onPreDraw$0$com-brakefield-painter-activities-ActivityMain$2()V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain$2;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivityMain;->access$600(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/brakefield/painter/SharedMessageHandler;->hideLoadScreen()V

    return-void
.end method

.method synthetic lambda$onPreDraw$1$com-brakefield-painter-activities-ActivityMain$2()V
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain$2;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivityMain;->access$600(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/brakefield/painter/SharedMessageHandler;->hideLoadScreen()V

    return-void
.end method

.method synthetic lambda$onPreDraw$2$com-brakefield-painter-activities-ActivityMain$2(ZLandroid/view/ViewGroup;Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 5

    .line 271
    iget-object p4, p0, Lcom/brakefield/painter/activities/ActivityMain$2;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {p4}, Lcom/brakefield/painter/PainterZeroLatency;->setup(Landroid/content/Context;)V

    .line 272
    new-instance p4, Landroid/view/ViewGroup$LayoutParams;

    const/4 p5, -0x1

    invoke-direct {p4, p5, p5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 273
    iget-object p5, p0, Lcom/brakefield/painter/activities/ActivityMain$2;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {p5, p5, p1}, Lcom/brakefield/painter/activities/ActivityMain;->access$300(Lcom/brakefield/painter/activities/ActivityMain;Landroid/content/Context;Z)Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;

    move-result-object p1

    invoke-static {p5, p1}, Lcom/brakefield/painter/activities/ActivityMain;->access$202(Lcom/brakefield/painter/activities/ActivityMain;Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;)Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;

    .line 274
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain$2;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {p1}, Lcom/brakefield/painter/activities/ActivityMain;->access$200(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;

    move-result-object p1

    invoke-interface {p1}, Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;->getView()Landroid/view/View;

    move-result-object p1

    .line 275
    invoke-virtual {p1, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    new-instance p4, Lcom/brakefield/painter/activities/ActivityMain$DropListener;

    iget-object p5, p0, Lcom/brakefield/painter/activities/ActivityMain$2;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    const/4 v0, 0x0

    invoke-direct {p4, p5, v0}, Lcom/brakefield/painter/activities/ActivityMain$DropListener;-><init>(Lcom/brakefield/painter/activities/ActivityMain;Lcom/brakefield/painter/activities/ActivityMain$1;)V

    invoke-virtual {p1, p4}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 277
    iget-object p4, p0, Lcom/brakefield/painter/activities/ActivityMain$2;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {p4}, Lcom/brakefield/painter/activities/ActivityMain;->access$200(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;

    move-result-object p4

    invoke-interface {p4}, Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;->registerContentReceiver()V

    .line 278
    iget-object p4, p0, Lcom/brakefield/painter/activities/ActivityMain$2;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {p4}, Lcom/brakefield/painter/activities/ActivityMain;->access$200(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;

    move-result-object p4

    iget-object p5, p0, Lcom/brakefield/painter/activities/ActivityMain$2;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {p5}, Lcom/brakefield/painter/activities/ActivityMain;->access$500(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/painter/OpacityControl;

    move-result-object p5

    invoke-interface {p4, p5}, Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;->setOpacityControl(Lcom/brakefield/painter/OpacityControl;)V

    .line 279
    iget-object p4, p0, Lcom/brakefield/painter/activities/ActivityMain$2;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {p4}, Lcom/brakefield/painter/activities/ActivityMain;->access$200(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;

    move-result-object p4

    iget-object p5, p0, Lcom/brakefield/painter/activities/ActivityMain$2;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {p5}, Lcom/brakefield/painter/activities/ActivityMain;->access$600(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object p5

    invoke-interface {p4, p5}, Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;->setSharedMessageHandler(Lcom/brakefield/painter/SharedMessageHandler;)V

    .line 280
    iget-object p4, p0, Lcom/brakefield/painter/activities/ActivityMain$2;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {p4}, Lcom/brakefield/painter/activities/ActivityMain;->access$700(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/painter/databinding/ActivityMainXBinding;

    move-result-object p4

    iget-object p4, p4, Lcom/brakefield/painter/databinding/ActivityMainXBinding;->inkingContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p4, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 281
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain$2;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    sget p4, Lcom/brakefield/infinitestudio/ui/ThemeManager;->uiScale:F

    invoke-static {p1, p4}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->rescaleUI(Landroid/app/Activity;F)V

    .line 282
    invoke-static {p3}, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    move-result-object p1

    .line 283
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 284
    iget-object p2, p0, Lcom/brakefield/painter/activities/ActivityMain$2;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/activities/ActivityMain;->bindInterface(Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;)V

    .line 285
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain$2;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {p1, v0}, Lcom/brakefield/painter/activities/ActivityMain;->access$102(Lcom/brakefield/painter/activities/ActivityMain;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;)Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    .line 287
    sget-boolean p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->createProject:Z

    if-nez p1, :cond_2

    .line 288
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->isDemoUser()Z

    move-result p1

    const/high16 p2, 0x44870000    # 1080.0f

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eqz p1, :cond_0

    .line 289
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getProjectsPath()Ljava/lang/String;

    move-result-object p1

    const-string p5, "demo"

    invoke-static {p1, p5}, Lcom/brakefield/infinitestudio/FileManager;->delete(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain$2;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-virtual {p1}, Lcom/brakefield/painter/activities/ActivityMain;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 293
    new-instance p5, Landroid/net/Uri$Builder;

    invoke-direct {p5}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "android.resource"

    .line 294
    invoke-virtual {p5, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p5

    const v1, 0x7f08013f

    .line 295
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p5

    .line 296
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p5

    .line 297
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p5

    .line 298
    invoke-virtual {p5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p5

    .line 299
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 300
    new-instance v1, Lcom/brakefield/painter/activities/ActivityMain$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivityMain$2$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/activities/ActivityMain$2;)V

    sput-object v1, Lcom/brakefield/painter/PainterGraphicsRenderer;->newProjectListener:Ljava/lang/Runnable;

    .line 302
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 303
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    .line 305
    new-instance v2, Lcom/brakefield/painter/nativeobjs/ProjectNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getNewProject()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/brakefield/painter/nativeobjs/ProjectNative;-><init>(J)V

    .line 306
    invoke-virtual {v2, v1, p1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->setPixelDimensions(II)V

    .line 308
    new-instance v3, Lcom/brakefield/painter/PlaybackManager;

    invoke-direct {v3}, Lcom/brakefield/painter/PlaybackManager;-><init>()V

    int-to-float v1, v1

    int-to-float p1, p1

    .line 309
    invoke-virtual {v3, v1, p1, p2}, Lcom/brakefield/painter/PlaybackManager;->getDimensionsFor(FFF)Lcom/brakefield/painter/video/Dimensions;

    move-result-object p1

    .line 310
    iget p2, p1, Lcom/brakefield/painter/video/Dimensions;->width:I

    iget p1, p1, Lcom/brakefield/painter/video/Dimensions;->height:I

    invoke-virtual {v2, p2, p1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->setTimelapseDimens(II)V

    .line 312
    sput-boolean p4, Lcom/brakefield/painter/PainterGraphicsRenderer;->createProject:Z

    .line 313
    sput p3, Lcom/brakefield/painter/PainterGraphicsRenderer;->importType:I

    .line 314
    sput-object p5, Lcom/brakefield/painter/PainterGraphicsRenderer;->importImage:Landroid/net/Uri;

    goto :goto_0

    .line 316
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain$2;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {p1}, Lcom/brakefield/painter/activities/ActivityMain;->access$800(Lcom/brakefield/painter/activities/ActivityMain;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p5, "PREF_STARTUP_HELP"

    invoke-interface {p1, p5, p4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 318
    new-instance p1, Lcom/brakefield/painter/activities/ActivityMain$2$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/brakefield/painter/activities/ActivityMain$2$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/activities/ActivityMain$2;)V

    sput-object p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->newProjectListener:Ljava/lang/Runnable;

    .line 320
    sget p1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    .line 321
    sget p3, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    .line 323
    new-instance p5, Lcom/brakefield/painter/nativeobjs/ProjectNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getNewProject()J

    move-result-wide v1

    invoke-direct {p5, v1, v2}, Lcom/brakefield/painter/nativeobjs/ProjectNative;-><init>(J)V

    const v1, 0x7f120a05

    .line 324
    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->setDisplayName(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p5, p1, p3}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->setPixelDimensions(II)V

    .line 327
    new-instance v1, Lcom/brakefield/painter/PlaybackManager;

    invoke-direct {v1}, Lcom/brakefield/painter/PlaybackManager;-><init>()V

    int-to-float p1, p1

    int-to-float p3, p3

    .line 328
    invoke-virtual {v1, p1, p3, p2}, Lcom/brakefield/painter/PlaybackManager;->getDimensionsFor(FFF)Lcom/brakefield/painter/video/Dimensions;

    move-result-object p1

    .line 329
    iget p2, p1, Lcom/brakefield/painter/video/Dimensions;->width:I

    iget p1, p1, Lcom/brakefield/painter/video/Dimensions;->height:I

    invoke-virtual {p5, p2, p1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->setTimelapseDimens(II)V

    .line 331
    sput-boolean p4, Lcom/brakefield/painter/PainterGraphicsRenderer;->createProject:Z

    .line 333
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain$2;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {p1}, Lcom/brakefield/painter/activities/ActivityMain;->access$600(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->requestRender()V

    goto :goto_0

    .line 335
    :cond_1
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityMain$2;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {p1}, Lcom/brakefield/painter/activities/ActivityMain;->access$900(Lcom/brakefield/painter/activities/ActivityMain;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object p1

    iget-object p2, p0, Lcom/brakefield/painter/activities/ActivityMain$2;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-virtual {p1, p2, p3, p3}, Lcom/brakefield/painter/ui/SimpleUI;->showHomeScreen(Landroid/app/Activity;ZI)V

    .line 338
    :cond_2
    :goto_0
    sget-object p1, Lcom/brakefield/painter/activities/ActivityMain;->shareIn:Landroid/content/Intent;

    if-eqz p1, :cond_3

    .line 339
    sget-object p1, Lcom/brakefield/painter/activities/ActivityMain;->shareIn:Landroid/content/Intent;

    .line 340
    sput-object v0, Lcom/brakefield/painter/activities/ActivityMain;->shareIn:Landroid/content/Intent;

    .line 341
    iget-object p2, p0, Lcom/brakefield/painter/activities/ActivityMain$2;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {p2, p1}, Lcom/brakefield/painter/activities/ActivityMain;->access$1000(Lcom/brakefield/painter/activities/ActivityMain;Landroid/content/Intent;)Z

    :cond_3
    return-void
.end method

.method public onPreDraw()Z
    .locals 4

    .line 267
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain$2;->val$splash:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 269
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain$2;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    new-instance v1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivityMain$2;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-direct {v1, v2}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/brakefield/painter/activities/ActivityMain;->access$102(Lcom/brakefield/painter/activities/ActivityMain;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;)Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    .line 270
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityMain$2;->this$0:Lcom/brakefield/painter/activities/ActivityMain;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivityMain;->access$100(Lcom/brakefield/painter/activities/ActivityMain;)Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    move-result-object v0

    iget-boolean v1, p0, Lcom/brakefield/painter/activities/ActivityMain$2;->val$useNewLowLatencyRenderer:Z

    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivityMain$2;->val$mainContainer:Landroid/view/ViewGroup;

    new-instance v3, Lcom/brakefield/painter/activities/ActivityMain$2$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1, v2}, Lcom/brakefield/painter/activities/ActivityMain$2$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/activities/ActivityMain$2;ZLandroid/view/ViewGroup;)V

    const v1, 0x7f0d0022

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    const/4 v0, 0x1

    return v0
.end method
