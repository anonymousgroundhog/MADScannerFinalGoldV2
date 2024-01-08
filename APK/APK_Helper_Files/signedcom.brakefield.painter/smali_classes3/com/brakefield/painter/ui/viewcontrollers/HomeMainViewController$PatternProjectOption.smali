.class Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$PatternProjectOption;
.super Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$CreateProjectOption;
.source "HomeMainViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PatternProjectOption"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;


# direct methods
.method private constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;)V
    .locals 1

    .line 339
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$PatternProjectOption;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$CreateProjectOption;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;)V
    .locals 0

    .line 339
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$PatternProjectOption;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;)V

    return-void
.end method


# virtual methods
.method getIcon()I
    .locals 1

    const v0, 0x7f080324

    return v0
.end method

.method getTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1209dd

    .line 342
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getUIBindingKey()I
    .locals 1

    const v0, 0x7f1207b1

    return v0
.end method

.method onClick(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 1

    .line 354
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/brakefield/painter/PainterProjectStore;->navigateTo(Lcom/brakefield/infinitestudio/ProjectStore$Project;)V

    .line 355
    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->showCreateProjectScreen(Landroid/app/Activity;)Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    move-result-object p1

    .line 356
    sget-object p2, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;->PATTERN:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->setProjectType(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;)V

    return-void
.end method
