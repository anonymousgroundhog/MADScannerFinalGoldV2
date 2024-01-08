.class public Lcom/brakefield/painter/activities/ActivityClassroom;
.super Lcom/brakefield/infinitestudio/activities/ClassroomActivity;
.source "ActivityClassroom.java"


# instance fields
.field private final quickHelp:Lcom/brakefield/painter/ui/QuickHelp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/activities/ClassroomActivity;-><init>()V

    .line 19
    new-instance v0, Lcom/brakefield/painter/ui/QuickHelp;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/QuickHelp;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityClassroom;->quickHelp:Lcom/brakefield/painter/ui/QuickHelp;

    return-void
.end method

.method private getCommunityLessons()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/activities/ClassroomActivity$Lesson;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    new-instance v7, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$BrowserLesson;

    const-string v3, "Infinite Studio community"

    const-string v4, "A great place to share artwork, bugs, and feature requests."

    const v5, 0x7f080245

    const-string v6, "https://www.infinitestudio.art/community.php"

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$BrowserLesson;-><init>(Lcom/brakefield/infinitestudio/activities/ClassroomActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getMainLessons()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/activities/ClassroomActivity$Lesson;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    new-instance v1, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$DialogLesson;

    const-string v2, "Displays when app is first opened. Shows how to use the toolbar."

    const v3, 0x7f080243

    const-string v4, "The Basics"

    invoke-direct {v1, p0, v4, v2, v3}, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$DialogLesson;-><init>(Lcom/brakefield/infinitestudio/activities/ClassroomActivity;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v1, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$WebsiteLesson;

    const-string v7, "Getting Started"

    const-string v8, "Learn how to navigate the interface."

    const v9, 0x7f080246

    const-string v10, "https://www.infinitestudio.art/painter/help/v6_0/interface/interface.html"

    move-object v5, v1

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$WebsiteLesson;-><init>(Lcom/brakefield/infinitestudio/activities/ClassroomActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v1, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$WebsiteLesson;

    const-string v7, "Managing Projects"

    const-string v8, "Open, edit, group and reorder projects."

    const v9, 0x7f080250

    const-string v10, "https://www.infinitestudio.art/painter/help/v6_0/projects/projects.html"

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$WebsiteLesson;-><init>(Lcom/brakefield/infinitestudio/activities/ClassroomActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v1, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$WebsiteLesson;

    const-string v7, "Changing Colors"

    const-string v8, "Learn how to change color and manage color palettes."

    const v9, 0x7f08023f

    const-string v10, "https://www.infinitestudio.art/painter/help/v6_0/color/color.html"

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$WebsiteLesson;-><init>(Lcom/brakefield/infinitestudio/activities/ClassroomActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v1, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$WebsiteLesson;

    const-string v7, "Using Layers"

    const-string v8, "Learn how to use layers and the layers bar."

    const v9, 0x7f080247

    const-string v10, "https://www.infinitestudio.art/painter/help/v6_0/layers/layers.html"

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$WebsiteLesson;-><init>(Lcom/brakefield/infinitestudio/activities/ClassroomActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v1, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$WebsiteLesson;

    const-string v7, "Transform"

    const-string v8, "Move, rotate, scale or distort your artwork."

    const v9, 0x7f080256

    const-string v10, "https://www.infinitestudio.art/painter/help/v6_0/transform/transform.html"

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$WebsiteLesson;-><init>(Lcom/brakefield/infinitestudio/activities/ClassroomActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v1, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$WebsiteLesson;

    const-string v7, "Fill Tools"

    const/4 v8, 0x0

    sget-object v8, Lcom/google/android/gms/common/util/jw/utcqmHsaH;->gOxhn:Ljava/lang/String;

    const v9, 0x7f080244

    const-string v10, "https://www.infinitestudio.art/painter/help/v6_0/fill/fill.html"

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$WebsiteLesson;-><init>(Lcom/brakefield/infinitestudio/activities/ClassroomActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v1, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$WebsiteLesson;

    const-string v7, "Symmetry"

    const-string v8, "Create elaborate and beautiful designs."

    const v9, 0x7f080253

    const-string v10, "https://www.infinitestudio.art/painter/help/v6_0/symmetry/symmetry.html"

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$WebsiteLesson;-><init>(Lcom/brakefield/infinitestudio/activities/ClassroomActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v1, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$WebsiteLesson;

    const-string v7, "Selection and Clipping masks"

    const-string v8, "Apply changes to specific parts of your work."

    const v9, 0x7f080251

    const-string v10, "https://www.infinitestudio.art/painter/help/v6_0/selection/selection.html"

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$WebsiteLesson;-><init>(Lcom/brakefield/infinitestudio/activities/ClassroomActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v1, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$WebsiteLesson;

    const-string v7, "Cloning"

    const-string v8, "Easily transform your photos into paintings."

    const v9, 0x7f08023e

    const-string v10, "https://www.infinitestudio.art/painter/help/v6_0/clone/clone.html"

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$WebsiteLesson;-><init>(Lcom/brakefield/infinitestudio/activities/ClassroomActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v1, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$WebsiteLesson;

    const-string v7, "Drop Shadows"

    const-string v8, "Create realistic drop shadows using selection masks."

    const v9, 0x7f080242

    const-string v10, "https://www.infinitestudio.art/painter/help/dropshadow/dropshadow.html"

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$WebsiteLesson;-><init>(Lcom/brakefield/infinitestudio/activities/ClassroomActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v1, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$WebsiteLesson;

    const-string v7, "Draw a Building"

    const-string v8, "Use perspective guides to create a building."

    const v9, 0x7f08023d

    const-string v10, "https://www.infinitestudio.art/painter/help/building/building.html"

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$WebsiteLesson;-><init>(Lcom/brakefield/infinitestudio/activities/ClassroomActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getPiotrsLessons()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/activities/ClassroomActivity$Lesson;",
            ">;"
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    new-instance v7, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$BrowserLesson;

    const-string v3, "Quick Tour"

    const-string v4, ""

    const v5, 0x7f08024e

    const-string v6, "https://www.youtube.com/watch?v=6hicbBcOkTE"

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$BrowserLesson;-><init>(Lcom/brakefield/infinitestudio/activities/ClassroomActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v1, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$BrowserLesson;

    const-string v10, "Gestures"

    const-string v11, ""

    const v12, 0x7f08024d

    const-string v13, "https://www.youtube.com/watch?v=aFXytCbIrhU"

    move-object v8, v1

    move-object v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$BrowserLesson;-><init>(Lcom/brakefield/infinitestudio/activities/ClassroomActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v1, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$BrowserLesson;

    const-string v4, "Customizability"

    const-string v5, ""

    const v6, 0x7f08024c

    const-string v7, "https://www.youtube.com/watch?v=BQvOaH4biI8"

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$BrowserLesson;-><init>(Lcom/brakefield/infinitestudio/activities/ClassroomActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v1, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$BrowserLesson;

    const-string v10, "Patterns"

    const/4 v11, 0x0

    sget-object v11, Landroidx/core/view/contentcapture/cO/WfeUtUoIBm;->eYXsoQKST:Ljava/lang/String;

    const v12, 0x7f08024f

    const-string v13, "https://www.youtube.com/watch?v=sl2WbBaCiHw"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$BrowserLesson;-><init>(Lcom/brakefield/infinitestudio/activities/ClassroomActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v1, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$BrowserLesson;

    const-string v4, "Brushes - part 1"

    const-string v5, ""

    const v6, 0x7f08024a

    const-string v7, "https://www.youtube.com/watch?v=r7nWMSVrJKI"

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$BrowserLesson;-><init>(Lcom/brakefield/infinitestudio/activities/ClassroomActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v1, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$BrowserLesson;

    const-string v10, "Brushes - part 2"

    const-string v11, ""

    const v12, 0x7f08024b

    const-string v13, "https://www.youtube.com/watch?v=0oHOyH85esI"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$BrowserLesson;-><init>(Lcom/brakefield/infinitestudio/activities/ClassroomActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance v1, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$BrowserLesson;

    const-string v4, "Brush Editor"

    const-string v5, ""

    const v6, 0x7f080249

    const-string v7, "https://www.youtube.com/watch?v=1SpHYj3a7-w"

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$BrowserLesson;-><init>(Lcom/brakefield/infinitestudio/activities/ClassroomActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected addClassroomSections(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "Lcom/brakefield/infinitestudio/activities/ClassroomActivity$Lesson;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityClassroom;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 38
    new-instance v1, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$ClassroomSection;

    invoke-direct {p0}, Lcom/brakefield/painter/activities/ActivityClassroom;->getMainLessons()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v0, v2, p2}, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$ClassroomSection;-><init>(Landroid/content/res/Resources;Ljava/util/List;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;

    .line 39
    new-instance v1, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$ClassroomSection;

    const/4 v2, 0x0

    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/guides/DR/isVGwxqXMxDjgS;->bbEASgkSlmbyfQr:Ljava/lang/String;

    invoke-direct {p0}, Lcom/brakefield/painter/activities/ActivityClassroom;->getPiotrsLessons()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3, p2}, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$ClassroomSection;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Ljava/util/List;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;

    .line 40
    new-instance v1, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$ClassroomSection;

    const-string v2, "Communities"

    invoke-direct {p0}, Lcom/brakefield/painter/activities/ActivityClassroom;->getCommunityLessons()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3, p2}, Lcom/brakefield/infinitestudio/activities/ClassroomActivity$ClassroomSection;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Ljava/util/List;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;

    return-void
.end method

.method protected bindMainContent(Landroid/view/ViewGroup;)V
    .locals 4

    .line 23
    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/activities/ClassroomActivity;->bindMainContent(Landroid/view/ViewGroup;)V

    .line 25
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityClassroom;->quickHelp:Lcom/brakefield/painter/ui/QuickHelp;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->showQuickHelp()Z

    move-result v1

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->visualizeQuickHelpCoverage()Z

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/brakefield/painter/ui/QuickHelp;->setup(Landroid/view/ViewGroup;Lcom/brakefield/painter/app/PainterApp;ZZ)V

    return-void
.end method

.method protected launchHelpDialog()V
    .locals 2

    const/4 v0, 0x4

    .line 30
    sput v0, Lcom/brakefield/painter/activities/ActivityHelp;->type:I

    .line 31
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/brakefield/painter/activities/ActivityHelp;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    invoke-virtual {p0, v0}, Lcom/brakefield/painter/activities/ActivityClassroom;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
