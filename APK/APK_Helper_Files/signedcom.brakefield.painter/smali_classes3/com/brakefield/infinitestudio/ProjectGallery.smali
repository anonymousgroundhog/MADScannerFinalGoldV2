.class public abstract Lcom/brakefield/infinitestudio/ProjectGallery;
.super Ljava/lang/Object;
.source "ProjectGallery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;,
        Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;,
        Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;,
        Lcom/brakefield/infinitestudio/ProjectGallery$Project;,
        Lcom/brakefield/infinitestudio/ProjectGallery$ViewHolder;
    }
.end annotation


# static fields
.field public static final JSON_NAME:Ljava/lang/String; = "name"

.field public static final JSON_PROJECT:Ljava/lang/String; = "project"

.field public static final JSON_PROJECTS:Ljava/lang/String; = "projects"

.field public static final JSON_PROJECT_FOLDER:Ljava/lang/String; = "project-folder"

.field protected static final TAG_GALLERY:Ljava/lang/String; = "TAG_GALLERY"

.field public static showSplash:Z


# instance fields
.field private accel:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

.field protected activity:Landroid/app/Activity;

.field private boomer:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

.field private columns:I

.field protected container:Landroid/view/ViewGroup;

.field private ctrlPressed:Z

.field private darkMutedColor:I

.field private edit:Z

.field private editGroup:Landroid/widget/ImageView;

.field private editOptions:Landroid/view/View;

.field private emptyText:Landroid/widget/TextView;

.field private fab:Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;

.field private galleryObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;",
            ">;"
        }
    .end annotation
.end field

.field private grid:Landroidx/recyclerview/widget/RecyclerView;

.field private gridAdapter:Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;

.field private gridScrollY:F

.field private inFolder:Z

.field private layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;",
            ">;"
        }
    .end annotation
.end field

.field private mutedColor:I

.field private newProject:Landroid/widget/ImageView;

.field protected oldPreviewThumb:Landroid/view/View;

.field private openTask:Ljava/lang/Object;

.field private prevChild:Landroid/view/View;

.field private prevChildIndex:I

.field protected preview:Landroid/view/View;

.field private previewContainer:Landroid/view/ViewGroup;

.field protected previewProject:Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

.field private reorder:Z

.field private res:Landroid/content/res/Resources;

.field private selectedFolder:Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;

.field private selectedProjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;",
            ">;"
        }
    .end annotation
.end field

.field private shiftPressed:Z

.field private slideshow:Lcom/brakefield/infinitestudio/ui/SlideshowView;

.field private smokeScreen:Landroid/view/View;

.field private starting:Z

.field private title:Landroid/widget/TextView;

.field private touchView:Lcom/brakefield/infinitestudio/ui/TouchView;

.field private vibrantColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 100
    iput v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->columns:I

    const/4 v1, 0x1

    .line 101
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->starting:Z

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->galleryObjects:Ljava/util/List;

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->list:Ljava/util/List;

    .line 115
    new-instance v1, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->list:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery;Ljava/util/List;)V

    iput-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->gridAdapter:Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;

    const/4 v1, -0x1

    .line 118
    iput v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->prevChildIndex:I

    .line 120
    new-instance v1, Lcom/brakefield/infinitestudio/interpolators/BoomerangInterpolator;

    invoke-direct {v1}, Lcom/brakefield/infinitestudio/interpolators/BoomerangInterpolator;-><init>()V

    iput-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->boomer:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

    .line 121
    new-instance v1, Lcom/brakefield/infinitestudio/interpolators/AccelInterpolator;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-direct {v1, v2}, Lcom/brakefield/infinitestudio/interpolators/AccelInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->accel:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

    .line 130
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->inFolder:Z

    .line 143
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->edit:Z

    .line 144
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->selectedProjects:Ljava/util/List;

    .line 146
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->reorder:Z

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/infinitestudio/ProjectGallery;)Landroid/widget/ImageView;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->newProject:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/brakefield/infinitestudio/ProjectGallery;)Landroid/widget/TextView;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->emptyText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/brakefield/infinitestudio/ProjectGallery;)I
    .locals 0

    .line 86
    iget p0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->mutedColor:I

    return p0
.end method

.method static synthetic access$1100(Lcom/brakefield/infinitestudio/ProjectGallery;)Landroid/content/res/Resources;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->res:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/brakefield/infinitestudio/ProjectGallery;)Ljava/util/List;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->galleryObjects:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/brakefield/infinitestudio/ProjectGallery;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ProjectGallery;->saveOrder()V

    return-void
.end method

.method static synthetic access$1400(Lcom/brakefield/infinitestudio/ProjectGallery;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ProjectGallery;->refresh()V

    return-void
.end method

.method static synthetic access$1500(Lcom/brakefield/infinitestudio/ProjectGallery;)Ljava/lang/Object;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->openTask:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/brakefield/infinitestudio/ProjectGallery;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->openTask:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/brakefield/infinitestudio/ProjectGallery;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->inFolder:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/brakefield/infinitestudio/ProjectGallery;)Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->selectedFolder:Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/brakefield/infinitestudio/ProjectGallery;)Landroid/view/ViewGroup;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->previewContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$200(Lcom/brakefield/infinitestudio/ProjectGallery;)Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->gridAdapter:Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/brakefield/infinitestudio/ProjectGallery;)Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->fab:Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/brakefield/infinitestudio/ProjectGallery;)Lcom/brakefield/infinitestudio/ui/SlideshowView;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->slideshow:Lcom/brakefield/infinitestudio/ui/SlideshowView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/brakefield/infinitestudio/ProjectGallery;)F
    .locals 0

    .line 86
    iget p0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->gridScrollY:F

    return p0
.end method

.method static synthetic access$502(Lcom/brakefield/infinitestudio/ProjectGallery;F)F
    .locals 0

    .line 86
    iput p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->gridScrollY:F

    return p1
.end method

.method static synthetic access$600(Lcom/brakefield/infinitestudio/ProjectGallery;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->edit:Z

    return p0
.end method

.method static synthetic access$702(Lcom/brakefield/infinitestudio/ProjectGallery;Z)Z
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->reorder:Z

    return p1
.end method

.method static synthetic access$800(Lcom/brakefield/infinitestudio/ProjectGallery;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->shiftPressed:Z

    return p0
.end method

.method static synthetic access$900(Lcom/brakefield/infinitestudio/ProjectGallery;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->ctrlPressed:Z

    return p0
.end method

.method public static getNewProjectName()Ljava/lang/String;
    .locals 1

    .line 2160
    sget v0, Lcom/brakefield/infinitestudio/R$string;->project:I

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ProjectGallery;->getNewProjectName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNewProjectName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, " "

    .line 2165
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2166
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    .line 2169
    :try_start_0
    array-length v2, v1

    sub-int/2addr v2, v4

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    const-string v1, ""

    .line 2170
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2176
    :catch_0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-lez v3, :cond_1

    .line 2183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, p0

    .line 2186
    :goto_1
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getProjectsPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/brakefield/infinitestudio/FileManager;->directoryExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getProjectsPath()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/brakefield/infinitestudio/ProjectZip;->suffix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/brakefield/infinitestudio/FileManager;->fileExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getProjects()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/brakefield/infinitestudio/ProjectGallery$Project;",
            ">;"
        }
    .end annotation

    .line 1582
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getProjectsPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/FileManager;->getDirectories(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1584
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1586
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "temp"

    .line 1587
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1588
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getProjectsPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/brakefield/infinitestudio/FileManager;->getFilesSorted(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1589
    array-length v3, v3

    if-lez v3, :cond_1

    .line 1590
    invoke-virtual {p0, v2}, Lcom/brakefield/infinitestudio/ProjectGallery;->getProject(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ProjectGallery$Project;

    move-result-object v2

    .line 1591
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1592
    :cond_1
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getProjectsPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/brakefield/infinitestudio/FileManager;->delete(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1596
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1598
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getProjectsPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/brakefield/infinitestudio/FileManager;->getFilesSorted(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1600
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_6

    aget-object v6, v2, v5

    .line 1601
    sget-object v7, Lcom/brakefield/infinitestudio/ProjectZip;->suffix:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1602
    sget-object v7, Lcom/brakefield/infinitestudio/ProjectZip;->suffix:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    move v7, v4

    :goto_2
    if-ge v7, v0, :cond_4

    .line 1605
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/brakefield/infinitestudio/ProjectGallery$Project;

    .line 1606
    invoke-virtual {v8}, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    move v7, v4

    :goto_3
    if-nez v7, :cond_5

    .line 1611
    invoke-virtual {p0, v6}, Lcom/brakefield/infinitestudio/ProjectGallery;->getProject(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ProjectGallery$Project;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    return-object v1
.end method

.method private getProjectsJSON()Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1655
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1656
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->galleryObjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1657
    check-cast v2, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    .line 1658
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static hasTemp()Z
    .locals 6

    .line 2196
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getProjectsPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "temp"

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/FileManager;->directoryExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2198
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getProjectsPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return v2

    .line 2204
    :cond_0
    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    const-string v5, "project.json"

    .line 2205
    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2
.end method

.method static synthetic lambda$show$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$show$13(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$show$14(Lcom/brakefield/infinitestudio/ProjectGallery$Project;Landroid/view/View;)V
    .locals 0

    .line 1862
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->duplicate()V

    return-void
.end method

.method static synthetic lambda$show$17(Lcom/brakefield/infinitestudio/ProjectGallery$Project;Landroid/view/View;)V
    .locals 0

    .line 1875
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->deletePrompt()V

    return-void
.end method

.method static synthetic lambda$show$18(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$show$21(Lcom/brakefield/infinitestudio/ProjectGallery$Project;Landroid/view/View;)V
    .locals 0

    .line 1924
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->open()V

    return-void
.end method

.method static synthetic lambda$show$8(Landroid/content/DialogInterface$OnClickListener;Landroidx/appcompat/app/AlertDialog;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x6

    const/4 p4, 0x0

    if-ne p3, p2, :cond_0

    .line 486
    invoke-interface {p0, p1, p4}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return p4
.end method

.method private loadOrder()V
    .locals 14

    const-string v0, "project-folder"

    .line 1676
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ProjectGallery;->getProjects()Ljava/util/ArrayList;

    move-result-object v1

    .line 1677
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 1680
    :try_start_0
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getProjectsPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "projects.json"

    invoke-static {v4, v5}, Lcom/brakefield/infinitestudio/FileManager;->getFileInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1681
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1683
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1685
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1687
    :cond_0
    new-instance v7, Lorg/json/JSONTokener;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    const-string v7, "projects"

    .line 1688
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move v7, v3

    .line 1690
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 1692
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 1694
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v10, "project"

    if-eqz v9, :cond_2

    .line 1696
    :try_start_3
    new-instance v9, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;

    invoke-direct {v9, p0}, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery;)V

    const-string v11, "name"

    .line 1697
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->name:Ljava/lang/String;

    .line 1699
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    move v11, v3

    .line 1701
    :goto_2
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v11, v12, :cond_1

    .line 1702
    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 1703
    invoke-virtual {v12, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/brakefield/infinitestudio/ProjectGallery;->getProject(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ProjectGallery$Project;

    move-result-object v12

    .line 1704
    iget-object v13, v9, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1707
    :cond_1
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1710
    :cond_2
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/brakefield/infinitestudio/ProjectGallery;->getProject(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ProjectGallery$Project;

    move-result-object v8

    .line 1711
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1714
    :cond_3
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v4, :cond_5

    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_6

    :catchall_0
    move-exception v0

    .line 1680
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v5

    :try_start_7
    invoke-virtual {v0, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    if-eqz v4, :cond_4

    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v4

    :try_start_9
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_5
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :catch_0
    move-exception v0

    .line 1715
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1720
    :cond_5
    :goto_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1721
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    .line 1723
    instance-of v6, v5, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;

    const/4 v7, 0x1

    if-eqz v6, :cond_b

    .line 1725
    check-cast v5, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;

    .line 1727
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1729
    iget-object v8, v5, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    .line 1731
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 1732
    check-cast v11, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    .line 1733
    invoke-virtual {v9}, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_8

    move v10, v7

    goto :goto_9

    :cond_9
    move v10, v3

    :goto_9
    if-nez v10, :cond_7

    .line 1738
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1741
    :cond_a
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    iget-object v8, v5, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_a

    .line 1744
    :cond_b
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 1745
    check-cast v8, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    .line 1746
    invoke-virtual {v5}, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_c

    goto :goto_b

    :cond_d
    move v7, v3

    :goto_b
    if-nez v7, :cond_6

    .line 1751
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 1755
    :cond_e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_c

    .line 1760
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1762
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1764
    :cond_10
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    .line 1765
    instance-of v5, v4, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;

    if-eqz v5, :cond_14

    .line 1767
    check-cast v4, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;

    .line 1769
    iget-object v4, v4, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_12
    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    .line 1770
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1771
    move-object v8, v7

    check-cast v8, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    .line 1772
    invoke-virtual {v5}, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_13

    .line 1773
    invoke-interface {v1, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_f

    .line 1780
    :cond_14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1781
    move-object v7, v6

    check-cast v7, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    .line 1782
    invoke-virtual {v4}, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_15

    .line 1783
    invoke-interface {v1, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1792
    :cond_16
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->galleryObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1793
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->galleryObjects:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1794
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->galleryObjects:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private refresh()V
    .locals 4

    .line 822
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 824
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->inFolder:Z

    if-eqz v0, :cond_1

    .line 825
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->selectedFolder:Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    .line 826
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 827
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectGallery;->hideFolder()V

    goto :goto_0

    .line 831
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 833
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->galleryObjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    .line 834
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->list:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 835
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 838
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    .line 839
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->galleryObjects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 840
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;->delete()V

    goto :goto_2

    .line 844
    :cond_4
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->gridAdapter:Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->notifyDataSetChanged()V

    .line 846
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->emptyText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->gridAdapter:Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private resizeGridAdapter()V
    .locals 2

    .line 806
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->res:Landroid/content/res/Resources;

    sget v1, Lcom/brakefield/infinitestudio/R$dimen;->image_thumbnail_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 807
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v1

    div-int/2addr v1, v0

    .line 808
    iget v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->columns:I

    if-eq v1, v0, :cond_1

    .line 809
    iput v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->columns:I

    if-nez v1, :cond_0

    .line 810
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    goto :goto_0

    .line 811
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private revealView(Landroid/view/View;FFII)V
    .locals 3

    const/4 v0, 0x0

    .line 2045
    invoke-static {p2, p3, v0, v0}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v1

    int-to-float p4, p4

    invoke-static {p2, p3, p4, v0}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    int-to-float p5, p5

    .line 2046
    invoke-static {p2, p3, v0, p5}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v0

    invoke-static {p2, p3, p4, p5}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result p4

    invoke-static {v0, p4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    .line 2048
    invoke-static {v1, p4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    const p5, 0x3f19999a    # 0.6f

    mul-float/2addr p5, p4

    float-to-int p2, p2

    float-to-int p3, p3

    .line 2053
    invoke-static {p1, p2, p3, p5, p4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p1

    .line 2054
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p3, 0x40000000    # 2.0f

    invoke-direct {p2, p3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p2, 0x140

    .line 2055
    invoke-virtual {p1, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 2056
    new-instance p2, Lcom/brakefield/infinitestudio/ProjectGallery$4;

    invoke-direct {p2, p0}, Lcom/brakefield/infinitestudio/ProjectGallery$4;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2072
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private saveOrder()V
    .locals 3

    .line 1664
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->galleryObjects:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1665
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getProjectsPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "projects.json"

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/FileManager;->getFileOutputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1666
    :try_start_1
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1667
    :try_start_2
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectGallery;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    .line 1668
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1669
    :try_start_3
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v2

    .line 1665
    :try_start_5
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    .line 1670
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public back()Z
    .locals 3

    .line 2114
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->container:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "TAG_GALLERY"

    .line 2115
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2116
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 2117
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->previewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 2118
    invoke-virtual {p0, v2, v0}, Lcom/brakefield/infinitestudio/ProjectGallery;->hide(ZLandroid/view/View$OnClickListener;)V

    return v2

    .line 2120
    :cond_2
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->edit:Z

    if-eqz v0, :cond_3

    .line 2121
    invoke-virtual {p0, v1}, Lcom/brakefield/infinitestudio/ProjectGallery;->edit(Z)V

    .line 2122
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->gridAdapter:Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->notifyDataSetChanged()V

    return v2

    .line 2123
    :cond_3
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->inFolder:Z

    if-eqz v0, :cond_4

    .line 2124
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectGallery;->hideFolder()V

    return v2

    .line 2127
    :cond_4
    invoke-static {}, Lcom/brakefield/infinitestudio/ProjectGallery;->hasTemp()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectGallery;->finish()V

    goto :goto_0

    .line 2128
    :cond_5
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return v2

    :cond_6
    :goto_1
    return v1
.end method

.method protected abstract backup(Lcom/brakefield/infinitestudio/ProjectGallery$Project;)V
.end method

.method public edit(Z)V
    .locals 4

    .line 2098
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->edit:Z

    .line 2099
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->edit:Z

    .line 2100
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->selectedProjects:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2101
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->edit:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    .line 2102
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->editOptions:Landroid/view/View;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->activity:Landroid/app/Activity;

    sget v3, Lcom/brakefield/infinitestudio/R$anim;->pop_in_buttons:I

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2103
    :cond_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->newProject:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2104
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->editOptions:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 2106
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->newProject:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->activity:Landroid/app/Activity;

    sget v3, Lcom/brakefield/infinitestudio/R$anim;->pop_in_buttons:I

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2107
    :cond_2
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->newProject:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2108
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->editOptions:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2110
    :goto_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->gridAdapter:Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public finish()V
    .locals 2

    .line 2135
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->container:Landroid/view/ViewGroup;

    const-string v1, "TAG_GALLERY"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method protected abstract getProject(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ProjectGallery$Project;
.end method

.method protected abstract getUserSession()J
.end method

.method public hasCommunity()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hide(ZLandroid/view/View$OnClickListener;)V
    .locals 16

    move-object/from16 v11, p0

    .line 1951
    iget-object v0, v11, Lcom/brakefield/infinitestudio/ProjectGallery;->slideshow:Lcom/brakefield/infinitestudio/ui/SlideshowView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->pause()V

    .line 1953
    :cond_0
    iget-object v12, v11, Lcom/brakefield/infinitestudio/ProjectGallery;->oldPreviewThumb:Landroid/view/View;

    if-eqz v12, :cond_3

    .line 1955
    iget-object v0, v11, Lcom/brakefield/infinitestudio/ProjectGallery;->preview:Landroid/view/View;

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 1961
    :cond_1
    iget-object v0, v11, Lcom/brakefield/infinitestudio/ProjectGallery;->smokeScreen:Landroid/view/View;

    const/16 v13, 0x8

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 1965
    invoke-virtual {v12, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1967
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 1968
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v14, 0x0

    aget v7, v1, v14

    const/4 v2, 0x1

    aget v9, v1, v2

    new-array v0, v0, [I

    .line 1975
    iget-object v1, v11, Lcom/brakefield/infinitestudio/ProjectGallery;->preview:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1977
    iget-object v1, v11, Lcom/brakefield/infinitestudio/ProjectGallery;->preview:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 1978
    iget-object v1, v11, Lcom/brakefield/infinitestudio/ProjectGallery;->preview:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    aget v8, v0, v14

    aget v10, v0, v2

    .line 1983
    iget-object v0, v11, Lcom/brakefield/infinitestudio/ProjectGallery;->preview:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 1984
    new-instance v0, Landroid/animation/FloatEvaluator;

    invoke-direct {v0}, Landroid/animation/FloatEvaluator;-><init>()V

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v2

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x50

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    .line 1985
    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1986
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1987
    new-instance v1, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda0;

    move-object v0, v1

    move-object v14, v1

    move-object/from16 v1, p0

    move-object v13, v2

    move v2, v6

    move v6, v8

    move v8, v10

    move-object v10, v15

    invoke-direct/range {v0 .. v10}, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery;IIIIIIIILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v13, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2005
    new-instance v0, Lcom/brakefield/infinitestudio/ProjectGallery$3;

    move-object/from16 v1, p2

    invoke-direct {v0, v11, v1, v12}, Lcom/brakefield/infinitestudio/ProjectGallery$3;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2028
    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->start()V

    .line 2030
    iget-object v0, v11, Lcom/brakefield/infinitestudio/ProjectGallery;->preview:Landroid/view/View;

    sget v1, Lcom/brakefield/infinitestudio/R$id;->options_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2031
    iget-object v1, v11, Lcom/brakefield/infinitestudio/ProjectGallery;->preview:Landroid/view/View;

    sget v2, Lcom/brakefield/infinitestudio/R$id;->name_bar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    .line 2033
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2034
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2036
    iget-object v0, v11, Lcom/brakefield/infinitestudio/ProjectGallery;->preview:Landroid/view/View;

    sget v1, Lcom/brakefield/infinitestudio/R$id;->preview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2037
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2039
    iget-object v0, v11, Lcom/brakefield/infinitestudio/ProjectGallery;->preview:Landroid/view/View;

    sget v1, Lcom/brakefield/infinitestudio/R$id;->small_name_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 2040
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 1956
    iput-object v0, v11, Lcom/brakefield/infinitestudio/ProjectGallery;->oldPreviewThumb:Landroid/view/View;

    .line 1957
    iput-object v0, v11, Lcom/brakefield/infinitestudio/ProjectGallery;->preview:Landroid/view/View;

    return-void
.end method

.method public hideFolder()V
    .locals 3

    const/4 v0, 0x0

    .line 1636
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->inFolder:Z

    const/4 v0, 0x0

    .line 1637
    iput-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->selectedFolder:Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;

    .line 1638
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ProjectGallery;->refresh()V

    .line 1640
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->title:Landroid/widget/TextView;

    sget v2, Lcom/brakefield/infinitestudio/R$string;->projects:I

    invoke-static {v2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1641
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1643
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->editGroup:Landroid/widget/ImageView;

    sget v1, Lcom/brakefield/infinitestudio/R$drawable;->folder:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method protected hideProgress()V
    .locals 0

    return-void
.end method

.method public isProjectSelected(Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;)Z
    .locals 1

    .line 2093
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->edit:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2094
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->selectedProjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isShowing()Z
    .locals 2

    .line 2150
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->container:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const-string v1, "TAG_GALLERY"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$hide$22$com-brakefield-infinitestudio-ProjectGallery(IIIIIIIILandroid/view/ViewGroup$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1989
    invoke-virtual {p10}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p10

    check-cast p10, Ljava/lang/Float;

    invoke-virtual {p10}, Ljava/lang/Float;->floatValue()F

    move-result p10

    int-to-float v0, p1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    mul-float/2addr p1, p10

    add-float/2addr v0, p1

    int-to-float p1, p3

    sub-int/2addr p4, p3

    int-to-float p2, p4

    mul-float/2addr p2, p10

    add-float/2addr p1, p2

    int-to-float p2, p5

    sub-int/2addr p6, p5

    int-to-float p3, p6

    mul-float/2addr p3, p10

    add-float/2addr p2, p3

    int-to-float p3, p7

    sub-int/2addr p8, p7

    int-to-float p4, p8

    mul-float/2addr p10, p4

    add-float/2addr p3, p10

    float-to-int p4, v0

    .line 1996
    iput p4, p9, Landroid/view/ViewGroup$LayoutParams;->height:I

    float-to-int p1, p1

    .line 1997
    iput p1, p9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1999
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->preview:Landroid/view/View;

    invoke-virtual {p1, p9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2001
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->preview:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 2002
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->preview:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method synthetic lambda$show$1$com-brakefield-infinitestudio-ProjectGallery(Landroid/view/View;)V
    .locals 1

    .line 0
    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 213
    invoke-virtual {p0, p1, v0}, Lcom/brakefield/infinitestudio/ProjectGallery;->hide(ZLandroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$show$10$com-brakefield-infinitestudio-ProjectGallery(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 18

    .line 0
    move-object/from16 v0, p0

    .line 509
    iget-object v1, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->galleryObjects:Ljava/util/List;

    .line 511
    iget-boolean v2, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->inFolder:Z

    if-eqz v2, :cond_0

    .line 512
    iget-object v1, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->selectedFolder:Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->projects:Ljava/util/List;

    .line 514
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    .line 518
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    .line 520
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 522
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getX()F

    move-result v5

    int-to-float v4, v4

    rem-float/2addr v5, v4

    .line 524
    iget-object v6, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, v2}, Landroidx/recyclerview/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 526
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getAction()I

    move-result v7

    const/4 v8, 0x4

    const/4 v9, -0x1

    const/4 v10, 0x1

    if-eq v7, v10, :cond_1e

    const/4 v11, 0x2

    const v13, 0x3eb33333    # 0.35f

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    if-eq v7, v11, :cond_11

    const/4 v9, 0x3

    if-eq v7, v9, :cond_3

    if-eq v7, v8, :cond_2

    goto/16 :goto_9

    .line 770
    :cond_2
    iget-object v1, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->slideshow:Lcom/brakefield/infinitestudio/ui/SlideshowView;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->play()V

    .line 771
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 635
    :cond_3
    iget-object v3, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 637
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 638
    iget v3, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->prevChildIndex:I

    sub-int/2addr v3, v6

    add-int/2addr v3, v2

    iput v3, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->prevChildIndex:I

    .line 641
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    .line 643
    iget-boolean v6, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->reorder:Z

    if-eqz v6, :cond_10

    .line 645
    iget v6, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->prevChildIndex:I

    if-ltz v6, :cond_e

    .line 647
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_e

    if-ne v2, v6, :cond_4

    return v10

    .line 653
    :cond_4
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    if-le v6, v2, :cond_5

    add-int/lit8 v6, v6, -0x1

    :cond_5
    div-float/2addr v5, v4

    .line 661
    iget-boolean v4, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->inFolder:Z

    if-eqz v4, :cond_6

    const/high16 v12, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_6
    move v12, v13

    :goto_0
    cmpg-float v4, v5, v12

    if-gez v4, :cond_7

    .line 665
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    .line 667
    invoke-interface {v1, v6, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 669
    iget-object v1, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->gridAdapter:Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->notifyDataSetChanged()V

    goto/16 :goto_3

    :cond_7
    sub-float v4, v15, v12

    cmpl-float v4, v5, v4

    if-lez v4, :cond_8

    .line 673
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    add-int/2addr v6, v10

    .line 674
    invoke-interface {v1, v6, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 676
    iget-object v1, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->gridAdapter:Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->notifyDataSetChanged()V

    goto/16 :goto_3

    .line 680
    :cond_8
    instance-of v2, v3, Lcom/brakefield/infinitestudio/ProjectGallery$Project;

    if-eqz v2, :cond_a

    .line 682
    instance-of v2, v7, Lcom/brakefield/infinitestudio/ProjectGallery$Project;

    if-eqz v2, :cond_9

    .line 684
    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 686
    invoke-interface {v1, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 688
    invoke-interface {v1, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 690
    new-instance v4, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;

    invoke-direct {v4, v0}, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery;)V

    .line 691
    iget-object v5, v4, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 692
    iget-object v5, v4, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    invoke-interface {v1, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 696
    iget-object v1, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->gridAdapter:Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 700
    :cond_9
    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 702
    check-cast v7, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;

    .line 703
    iget-object v1, v7, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    iget-object v1, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->gridAdapter:Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 711
    :cond_a
    instance-of v2, v7, Lcom/brakefield/infinitestudio/ProjectGallery$Project;

    if-eqz v2, :cond_c

    .line 713
    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 715
    invoke-interface {v1, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 717
    invoke-interface {v1, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 719
    new-instance v4, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;

    invoke-direct {v4, v0}, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery;)V

    .line 720
    iget-object v5, v4, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 722
    check-cast v3, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;

    .line 723
    iget-object v3, v3, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    .line 724
    iget-object v6, v4, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 727
    :cond_b
    invoke-interface {v1, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 729
    iget-object v1, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->gridAdapter:Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 733
    :cond_c
    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 735
    check-cast v7, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;

    .line 736
    check-cast v3, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;

    .line 737
    iget-object v1, v3, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    .line 738
    iget-object v3, v7, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 741
    :cond_d
    iget-object v1, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->gridAdapter:Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->notifyDataSetChanged()V

    .line 751
    :cond_e
    :goto_3
    iget-object v1, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->prevChild:Landroid/view/View;

    if-eqz v1, :cond_f

    .line 752
    invoke-virtual {v1, v14}, Landroid/view/View;->setRotationY(F)V

    .line 753
    iget-object v1, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->prevChild:Landroid/view/View;

    invoke-virtual {v1, v14}, Landroid/view/View;->setTranslationX(F)V

    .line 754
    iget-object v1, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->prevChild:Landroid/view/View;

    invoke-virtual {v1, v15}, Landroid/view/View;->setScaleX(F)V

    .line 755
    iget-object v1, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->prevChild:Landroid/view/View;

    invoke-virtual {v1, v15}, Landroid/view/View;->setScaleY(F)V

    .line 759
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/infinitestudio/ProjectGallery;->saveOrder()V

    .line 761
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/infinitestudio/ProjectGallery;->refresh()V

    goto/16 :goto_9

    .line 764
    :cond_10
    invoke-virtual {v0, v10}, Lcom/brakefield/infinitestudio/ProjectGallery;->edit(Z)V

    .line 765
    invoke-virtual {v0, v3}, Lcom/brakefield/infinitestudio/ProjectGallery;->selectProject(Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;)V

    goto/16 :goto_9

    :cond_11
    move v1, v3

    .line 540
    :goto_4
    iget-object v7, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v7

    if-ge v1, v7, :cond_13

    .line 541
    iget-object v7, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_12

    .line 543
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v11

    .line 544
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v3

    .line 545
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v16

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v17

    add-int v12, v16, v17

    .line 546
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v16

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int v7, v16, v7

    invoke-direct {v8, v11, v3, v12, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 547
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 548
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    .line 547
    invoke-virtual {v8, v3, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_12

    move v9, v1

    goto :goto_5

    :cond_12
    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    goto :goto_4

    .line 555
    :cond_13
    :goto_5
    iget-boolean v1, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->reorder:Z

    if-nez v1, :cond_15

    if-eq v6, v9, :cond_14

    move v3, v10

    goto :goto_6

    :cond_14
    const/4 v3, 0x0

    :goto_6
    iput-boolean v3, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->reorder:Z

    .line 557
    :cond_15
    iget-boolean v1, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->reorder:Z

    if-eqz v1, :cond_1f

    if-ltz v9, :cond_1d

    .line 559
    iget-object v1, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v9, v1, :cond_1d

    .line 560
    iget-object v1, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v9}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 564
    sget v3, Lcom/brakefield/infinitestudio/R$id;->tile:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 566
    iget-object v6, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->prevChild:Landroid/view/View;

    if-eqz v6, :cond_16

    if-eq v3, v6, :cond_16

    .line 567
    invoke-virtual {v6, v14}, Landroid/view/View;->setRotationY(F)V

    .line 568
    iget-object v6, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->prevChild:Landroid/view/View;

    invoke-virtual {v6, v14}, Landroid/view/View;->setTranslationX(F)V

    .line 569
    iget-object v6, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->prevChild:Landroid/view/View;

    invoke-virtual {v6, v15}, Landroid/view/View;->setScaleX(F)V

    .line 570
    iget-object v6, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->prevChild:Landroid/view/View;

    invoke-virtual {v6, v15}, Landroid/view/View;->setScaleY(F)V

    .line 573
    :cond_16
    iput-object v3, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->prevChild:Landroid/view/View;

    .line 574
    iput v9, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->prevChildIndex:I

    if-ne v1, v2, :cond_17

    return v10

    :cond_17
    div-float/2addr v5, v4

    .line 584
    iget-boolean v1, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->inFolder:Z

    if-eqz v1, :cond_18

    const/high16 v12, 0x3f000000    # 0.5f

    goto :goto_7

    :cond_18
    move v12, v13

    :goto_7
    cmpg-float v1, v5, v12

    const v2, 0x3dcccccd    # 0.1f

    if-gez v1, :cond_19

    .line 588
    iget-object v1, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->boomer:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

    invoke-interface {v1, v15, v5, v12}, Lcom/brakefield/infinitestudio/interpolators/Interpolator;->interpolate(FFF)F

    move-result v1

    mul-float/2addr v1, v4

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v4

    .line 591
    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 593
    iget-object v1, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->accel:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

    invoke-interface {v1, v15, v5, v12}, Lcom/brakefield/infinitestudio/interpolators/Interpolator;->interpolate(FFF)F

    move-result v1

    mul-float/2addr v1, v2

    sub-float/2addr v15, v1

    .line 595
    invoke-virtual {v3, v15}, Landroid/view/View;->setScaleX(F)V

    .line 596
    invoke-virtual {v3, v15}, Landroid/view/View;->setScaleY(F)V

    goto :goto_9

    :cond_19
    sub-float v1, v15, v12

    cmpl-float v1, v5, v1

    if-lez v1, :cond_1c

    .line 600
    iget-object v1, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->boomer:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

    sub-float v5, v15, v5

    invoke-interface {v1, v15, v5, v12}, Lcom/brakefield/infinitestudio/interpolators/Interpolator;->interpolate(FFF)F

    move-result v1

    cmpg-float v6, v1, v14

    if-gez v6, :cond_1a

    goto :goto_8

    :cond_1a
    move v14, v1

    :goto_8
    cmpl-float v1, v14, v15

    if-lez v1, :cond_1b

    move v14, v15

    :cond_1b
    mul-float/2addr v14, v4

    const v1, -0x41b33333    # -0.2f

    mul-float/2addr v14, v1

    .line 607
    invoke-virtual {v3, v14}, Landroid/view/View;->setTranslationX(F)V

    .line 609
    iget-object v1, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->accel:Lcom/brakefield/infinitestudio/interpolators/Interpolator;

    invoke-interface {v1, v15, v5, v12}, Lcom/brakefield/infinitestudio/interpolators/Interpolator;->interpolate(FFF)F

    move-result v1

    mul-float/2addr v1, v2

    sub-float/2addr v15, v1

    .line 611
    invoke-virtual {v3, v15}, Landroid/view/View;->setScaleX(F)V

    .line 612
    invoke-virtual {v3, v15}, Landroid/view/View;->setScaleY(F)V

    goto :goto_9

    .line 616
    :cond_1c
    invoke-virtual {v3, v14}, Landroid/view/View;->setRotationY(F)V

    .line 617
    invoke-virtual {v3, v14}, Landroid/view/View;->setTranslationX(F)V

    const v1, 0x3f666666    # 0.9f

    .line 618
    invoke-virtual {v3, v1}, Landroid/view/View;->setScaleX(F)V

    .line 619
    invoke-virtual {v3, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_9

    .line 622
    :cond_1d
    iget-object v1, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->prevChild:Landroid/view/View;

    if-eqz v1, :cond_1f

    .line 623
    invoke-virtual {v1, v14}, Landroid/view/View;->setRotationY(F)V

    .line 624
    iget-object v1, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->prevChild:Landroid/view/View;

    invoke-virtual {v1, v14}, Landroid/view/View;->setTranslationX(F)V

    .line 625
    iget-object v1, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->prevChild:Landroid/view/View;

    invoke-virtual {v1, v15}, Landroid/view/View;->setScaleX(F)V

    .line 626
    iget-object v1, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->prevChild:Landroid/view/View;

    invoke-virtual {v1, v15}, Landroid/view/View;->setScaleY(F)V

    goto :goto_9

    .line 528
    :cond_1e
    iget-object v1, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->slideshow:Lcom/brakefield/infinitestudio/ui/SlideshowView;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->pause()V

    .line 529
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 530
    iput-boolean v10, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->reorder:Z

    const/4 v1, 0x0

    .line 531
    iput-object v1, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->prevChild:Landroid/view/View;

    .line 532
    iput v9, v0, Lcom/brakefield/infinitestudio/ProjectGallery;->prevChildIndex:I

    :cond_1f
    :goto_9
    return v10
.end method

.method synthetic lambda$show$11$com-brakefield-infinitestudio-ProjectGallery()V
    .locals 0

    .line 782
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ProjectGallery;->resizeGridAdapter()V

    return-void
.end method

.method synthetic lambda$show$15$com-brakefield-infinitestudio-ProjectGallery(Lcom/brakefield/infinitestudio/ProjectGallery$Project;Landroid/view/View;)V
    .locals 0

    .line 1862
    new-instance p2, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda16;

    invoke-direct {p2, p1}, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda16;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery$Project;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/brakefield/infinitestudio/ProjectGallery;->hide(ZLandroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$show$16$com-brakefield-infinitestudio-ProjectGallery(Lcom/brakefield/infinitestudio/ProjectGallery$Project;Landroid/view/View;)V
    .locals 0

    .line 1867
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ProjectGallery;->share(Lcom/brakefield/infinitestudio/ProjectGallery$Project;)V

    return-void
.end method

.method synthetic lambda$show$19$com-brakefield-infinitestudio-ProjectGallery(Lcom/brakefield/infinitestudio/ProjectGallery$Project;Landroid/view/View;)V
    .locals 1

    .line 1885
    new-instance p2, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda12;

    invoke-direct {p2}, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda12;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/brakefield/infinitestudio/ProjectGallery;->hide(ZLandroid/view/View$OnClickListener;)V

    .line 1886
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->selectedFolder:Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;

    iget-object p2, p2, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 1887
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->selectedFolder:Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;

    iget-object p2, p2, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    .line 1888
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->selectedFolder:Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;

    iget-object p2, p2, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1889
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->galleryObjects:Ljava/util/List;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->selectedFolder:Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;

    invoke-interface {p2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 1890
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->galleryObjects:Ljava/util/List;

    add-int/lit8 p2, p2, 0x1

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1891
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->selectedFolder:Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1892
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->galleryObjects:Ljava/util/List;

    iget-object p2, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->selectedFolder:Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1893
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectGallery;->hideFolder()V

    .line 1895
    :cond_0
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ProjectGallery;->refresh()V

    return-void
.end method

.method synthetic lambda$show$2$com-brakefield-infinitestudio-ProjectGallery()V
    .locals 1

    .line 317
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->starting:Z

    if-eqz v0, :cond_1

    .line 318
    sget-boolean v0, Lcom/brakefield/infinitestudio/ProjectGallery;->showSplash:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->slideshow:Lcom/brakefield/infinitestudio/ui/SlideshowView;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->show()V

    goto :goto_0

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->slideshow:Lcom/brakefield/infinitestudio/ui/SlideshowView;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->hide()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 321
    sput-boolean v0, Lcom/brakefield/infinitestudio/ProjectGallery;->showSplash:Z

    .line 322
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->starting:Z

    return-void
.end method

.method synthetic lambda$show$20$com-brakefield-infinitestudio-ProjectGallery(Lcom/brakefield/infinitestudio/ProjectGallery$Project;Landroid/view/View;)V
    .locals 0

    .line 1904
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ProjectGallery;->backup(Lcom/brakefield/infinitestudio/ProjectGallery$Project;)V

    return-void
.end method

.method synthetic lambda$show$3$com-brakefield-infinitestudio-ProjectGallery(Landroid/view/View;)V
    .locals 2

    .line 341
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->slideshow:Lcom/brakefield/infinitestudio/ui/SlideshowView;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 342
    new-instance p1, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectGallery;->getUserSession()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;-><init>(J)V

    sput-object p1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    .line 343
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->activity:Landroid/app/Activity;

    const-class v1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 344
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 345
    :cond_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->slideshow:Lcom/brakefield/infinitestudio/ui/SlideshowView;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->show()V

    :goto_0
    return-void
.end method

.method synthetic lambda$show$4$com-brakefield-infinitestudio-ProjectGallery(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    .line 353
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ProjectGallery;->edit(Z)V

    .line 354
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->gridAdapter:Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method synthetic lambda$show$5$com-brakefield-infinitestudio-ProjectGallery(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 365
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->inFolder:Z

    if-eqz p1, :cond_0

    .line 366
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->selectedProjects:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    .line 367
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->selectedFolder:Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 368
    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;->delete()V

    goto :goto_0

    .line 370
    :cond_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->selectedProjects:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;->delete()V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 372
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ProjectGallery;->edit(Z)V

    .line 373
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->gridAdapter:Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method synthetic lambda$show$6$com-brakefield-infinitestudio-ProjectGallery(Landroid/view/View;)V
    .locals 2

    .line 361
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 362
    sget v0, Lcom/brakefield/infinitestudio/R$string;->prompt_delete_projects:I

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 363
    sget v0, Lcom/brakefield/infinitestudio/R$string;->delete:I

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda15;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 376
    sget v0, Lcom/brakefield/infinitestudio/R$string;->cancel:I

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 377
    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$show$7$com-brakefield-infinitestudio-ProjectGallery(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 4

    .line 448
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->galleryObjects:Ljava/util/List;

    .line 450
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 452
    new-instance p3, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;

    invoke-direct {p3, p0}, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery;)V

    .line 453
    iput-object p1, p3, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->name:Ljava/lang/String;

    .line 456
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->selectedProjects:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    invoke-interface {p2, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_0
    if-gez v1, :cond_1

    move v1, v0

    .line 460
    :cond_1
    invoke-interface {p2, v1, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 462
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->selectedProjects:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    .line 463
    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 464
    instance-of v2, v1, Lcom/brakefield/infinitestudio/ProjectGallery$Project;

    if-eqz v2, :cond_3

    iget-object v2, p3, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 466
    :cond_3
    check-cast v1, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;

    .line 467
    iget-object v1, v1, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    iget-object v3, p3, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 471
    :cond_4
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ProjectGallery;->saveOrder()V

    .line 473
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ProjectGallery;->edit(Z)V

    .line 474
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ProjectGallery;->refresh()V

    return-void
.end method

.method synthetic lambda$show$9$com-brakefield-infinitestudio-ProjectGallery(Landroid/view/View;)V
    .locals 6

    .line 384
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->inFolder:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 386
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->selectedFolder:Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->projects:Ljava/util/List;

    .line 388
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->galleryObjects:Ljava/util/List;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->selectedFolder:Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 390
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->selectedProjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    .line 391
    invoke-interface {p1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 392
    instance-of v4, v3, Lcom/brakefield/infinitestudio/ProjectGallery$Project;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->galleryObjects:Ljava/util/List;

    invoke-interface {v4, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 394
    :cond_1
    check-cast v3, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;

    .line 395
    iget-object v3, v3, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    iget-object v5, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->galleryObjects:Ljava/util/List;

    invoke-interface {v5, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 399
    :cond_2
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ProjectGallery;->edit(Z)V

    .line 401
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectGallery;->hideFolder()V

    .line 403
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ProjectGallery;->saveOrder()V

    goto/16 :goto_5

    .line 408
    :cond_3
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->selectedProjects:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    .line 409
    instance-of v3, v1, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;

    if-eqz v3, :cond_4

    .line 410
    check-cast v1, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;

    goto :goto_2

    :cond_5
    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_a

    .line 417
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->galleryObjects:Ljava/util/List;

    .line 419
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->selectedProjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    if-ne v1, v3, :cond_7

    goto :goto_3

    .line 421
    :cond_7
    invoke-interface {p1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 422
    instance-of v4, v3, Lcom/brakefield/infinitestudio/ProjectGallery$Project;

    if-eqz v4, :cond_8

    iget-object v4, v1, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 424
    :cond_8
    check-cast v3, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;

    .line 425
    iget-object v3, v3, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    iget-object v5, v1, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 429
    :cond_9
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ProjectGallery;->saveOrder()V

    .line 431
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ProjectGallery;->edit(Z)V

    .line 432
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ProjectGallery;->refresh()V

    goto :goto_5

    .line 436
    :cond_a
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 438
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/brakefield/infinitestudio/R$layout;->rename:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 440
    invoke-static {}, Lcom/brakefield/infinitestudio/ProjectGallery;->getNewProjectName()Ljava/lang/String;

    move-result-object v1

    .line 442
    sget v3, Lcom/brakefield/infinitestudio/R$id;->edit_name:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 443
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 444
    invoke-virtual {v3}, Landroid/widget/EditText;->selectAll()V

    .line 446
    new-instance v1, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, v3}, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda13;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery;Landroid/widget/EditText;)V

    .line 477
    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 478
    sget v0, Lcom/brakefield/infinitestudio/R$string;->ok:I

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 479
    sget v0, Lcom/brakefield/infinitestudio/R$string;->cancel:I

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 481
    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 482
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 484
    new-instance v0, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda14;

    invoke-direct {v0, v1, p1}, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda14;-><init>(Landroid/content/DialogInterface$OnClickListener;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :goto_5
    return-void
.end method

.method synthetic lambda$showFolder$12$com-brakefield-infinitestudio-ProjectGallery(Landroid/view/View;)V
    .locals 0

    .line 1626
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->inFolder:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectGallery;->hideFolder()V

    :cond_0
    return-void
.end method

.method public load()V
    .locals 1

    .line 2144
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectGallery;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2145
    :cond_0
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ProjectGallery;->loadOrder()V

    .line 2146
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ProjectGallery;->refresh()V

    return-void
.end method

.method protected abstract open(Lcom/brakefield/infinitestudio/ProjectGallery$Project;)V
.end method

.method protected openMain(Lcom/brakefield/infinitestudio/ProjectGallery$Project;)V
    .locals 0

    .line 816
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ProjectGallery;->open(Lcom/brakefield/infinitestudio/ProjectGallery$Project;)V

    .line 817
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ProjectGallery;->saveOrder()V

    return-void
.end method

.method public save()V
    .locals 1

    .line 2139
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectGallery;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2140
    :cond_0
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ProjectGallery;->saveOrder()V

    return-void
.end method

.method public selectOrUnselectProject(Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;)V
    .locals 2

    .line 2081
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->edit:Z

    if-nez v0, :cond_0

    return-void

    .line 2082
    :cond_0
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ProjectGallery;->isProjectSelected(Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ProjectGallery;->unselectProject(Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;)V

    goto :goto_0

    .line 2083
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->selectedProjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2084
    :goto_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->gridAdapter:Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->access$1900(Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public selectProject(Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;)V
    .locals 1

    .line 2076
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->edit:Z

    if-nez v0, :cond_0

    return-void

    .line 2077
    :cond_0
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ProjectGallery;->isProjectSelected(Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->selectedProjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public setModifierKeys(ZZ)V
    .locals 0

    .line 2217
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->ctrlPressed:Z

    .line 2218
    iput-boolean p2, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->shiftPressed:Z

    return-void
.end method

.method protected abstract setupNewProjectOptions()V
.end method

.method protected abstract share(Lcom/brakefield/infinitestudio/ProjectGallery$Project;)V
.end method

.method public show(Landroid/app/Activity;Lcom/brakefield/infinitestudio/geometry/Point;Landroid/view/ViewGroup;)V
    .locals 10

    .line 182
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->activity:Landroid/app/Activity;

    const/4 v0, 0x0

    .line 183
    iput-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->openTask:Ljava/lang/Object;

    .line 184
    iput-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->previewProject:Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    .line 185
    iput-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->oldPreviewThumb:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    .line 189
    :cond_0
    iput-object p3, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->container:Landroid/view/ViewGroup;

    .line 190
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->res:Landroid/content/res/Resources;

    .line 192
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->container:Landroid/view/ViewGroup;

    const-string p3, "TAG_GALLERY"

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    .line 194
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/brakefield/infinitestudio/R$layout;->activity_projects:I

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 195
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 196
    iget-object p3, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->container:Landroid/view/ViewGroup;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    move-object v1, p1

    .line 199
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getBackgroundColor()I

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->darkMutedColor:I

    .line 200
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->mutedColor:I

    const/4 p1, -0x1

    .line 201
    iput p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->vibrantColor:I

    .line 203
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->container:Landroid/view/ViewGroup;

    sget p3, Lcom/brakefield/infinitestudio/R$id;->touch_view:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/ui/TouchView;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->touchView:Lcom/brakefield/infinitestudio/ui/TouchView;

    .line 205
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->container:Landroid/view/ViewGroup;

    sget p3, Lcom/brakefield/infinitestudio/R$id;->root:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 206
    iget p3, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->darkMutedColor:I

    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 207
    new-instance p3, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda17;

    invoke-direct {p3}, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda17;-><init>()V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 209
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->container:Landroid/view/ViewGroup;

    sget p3, Lcom/brakefield/infinitestudio/R$id;->preview_container:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->previewContainer:Landroid/view/ViewGroup;

    .line 211
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->container:Landroid/view/ViewGroup;

    sget p3, Lcom/brakefield/infinitestudio/R$id;->smoke_screen:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->smokeScreen:Landroid/view/View;

    .line 213
    new-instance p3, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda18;

    invoke-direct {p3, p0}, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda18;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->container:Landroid/view/ViewGroup;

    sget p3, Lcom/brakefield/infinitestudio/R$id;->title:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->title:Landroid/widget/TextView;

    .line 217
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->container:Landroid/view/ViewGroup;

    sget p3, Lcom/brakefield/infinitestudio/R$id;->top_bar:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 218
    iget-object p3, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->container:Landroid/view/ViewGroup;

    sget v0, Lcom/brakefield/infinitestudio/R$id;->bottom_bar:I

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 219
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->container:Landroid/view/ViewGroup;

    sget v2, Lcom/brakefield/infinitestudio/R$id;->splash_overlay:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 221
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->container:Landroid/view/ViewGroup;

    sget v2, Lcom/brakefield/infinitestudio/R$id;->grid:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->grid:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v8, 0x1

    .line 222
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 224
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_4

    .line 226
    :cond_2
    iget v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->columns:I

    if-lez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    .line 227
    :goto_0
    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 228
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 231
    :cond_4
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->res:Landroid/content/res/Resources;

    sget v2, Lcom/brakefield/infinitestudio/R$dimen;->fab_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->res:Landroid/content/res/Resources;

    sget v3, Lcom/brakefield/infinitestudio/R$dimen;->fab_button_offset:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float/2addr v0, v2

    neg-float v7, v0

    .line 233
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->container:Landroid/view/ViewGroup;

    sget v2, Lcom/brakefield/infinitestudio/R$id;->slideshow_view_1:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->slideshow:Lcom/brakefield/infinitestudio/ui/SlideshowView;

    .line 234
    new-instance v9, Lcom/brakefield/infinitestudio/ProjectGallery$1;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/brakefield/infinitestudio/ProjectGallery$1;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery;Landroid/view/View;Landroid/view/View;Landroid/view/View;F)V

    invoke-virtual {v0, v9}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->setSlideshowListener(Lcom/brakefield/infinitestudio/ui/SlideshowView$SlideshowListener;)V

    .line 313
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->slideshow:Lcom/brakefield/infinitestudio/ui/SlideshowView;

    new-instance v2, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectGallery;->getUserSession()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;-><init>(J)V

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->setUserSession(Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;)V

    .line 315
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->starting:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 316
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->slideshow:Lcom/brakefield/infinitestudio/ui/SlideshowView;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v3, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda19;

    invoke-direct {v3, p0}, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda19;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_2

    .line 325
    :cond_5
    sget-boolean v0, Lcom/brakefield/infinitestudio/ProjectGallery;->showSplash:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->slideshow:Lcom/brakefield/infinitestudio/ui/SlideshowView;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->show()V

    goto :goto_1

    .line 326
    :cond_6
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->slideshow:Lcom/brakefield/infinitestudio/ui/SlideshowView;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->hide()V

    .line 327
    :goto_1
    sput-boolean v2, Lcom/brakefield/infinitestudio/ProjectGallery;->showSplash:Z

    .line 330
    :goto_2
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->slideshow:Lcom/brakefield/infinitestudio/ui/SlideshowView;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 331
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->slideshow:Lcom/brakefield/infinitestudio/ui/SlideshowView;

    iget-object v3, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->container:Landroid/view/ViewGroup;

    sget v4, Lcom/brakefield/infinitestudio/R$id;->artist_text:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->setNameView(Landroid/widget/TextView;)V

    const/16 v0, 0x8

    .line 333
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 334
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 336
    new-instance p1, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;

    invoke-direct {p1}, Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->fab:Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;

    .line 338
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->container:Landroid/view/ViewGroup;

    sget p3, Lcom/brakefield/infinitestudio/R$id;->new_project:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->newProject:Landroid/widget/ImageView;

    .line 339
    iget-object p3, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->fab:Lcom/brakefield/infinitestudio/ui/FloatingButtonDrawable;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 340
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->newProject:Landroid/widget/ImageView;

    new-instance p3, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda20;

    invoke-direct {p3, p0}, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda20;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->container:Landroid/view/ViewGroup;

    sget p3, Lcom/brakefield/infinitestudio/R$id;->projects_edit_options:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->editOptions:Landroid/view/View;

    .line 350
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->container:Landroid/view/ViewGroup;

    sget p3, Lcom/brakefield/infinitestudio/R$id;->projects_edit_accept:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 351
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 352
    new-instance p3, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda21;

    invoke-direct {p3, p0}, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda21;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->container:Landroid/view/ViewGroup;

    sget p3, Lcom/brakefield/infinitestudio/R$id;->projects_edit_delete:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 358
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 359
    new-instance p3, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda22;

    invoke-direct {p3, p0}, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda22;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->container:Landroid/view/ViewGroup;

    sget p3, Lcom/brakefield/infinitestudio/R$id;->projects_edit_group:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->editGroup:Landroid/widget/ImageView;

    .line 381
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 382
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->editGroup:Landroid/widget/ImageView;

    new-instance p3, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getBackgroundColor()I

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setBackgroundColor(I)V

    .line 497
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->grid:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lcom/brakefield/infinitestudio/ProjectGallery$2;

    invoke-direct {p3, p0}, Lcom/brakefield/infinitestudio/ProjectGallery$2;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery;)V

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 507
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->grid:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery;)V

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 778
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->container:Landroid/view/ViewGroup;

    sget p3, Lcom/brakefield/infinitestudio/R$id;->empty_text:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->emptyText:Landroid/widget/TextView;

    .line 780
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->grid:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->gridAdapter:Lcom/brakefield/infinitestudio/ProjectGallery$GridAdapter;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 782
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p3, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery;)V

    invoke-virtual {p1, p3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 784
    invoke-virtual {p0, v2}, Lcom/brakefield/infinitestudio/ProjectGallery;->edit(Z)V

    if-eqz p2, :cond_7

    .line 788
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->container:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    .line 789
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->container:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    .line 791
    sget p1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    int-to-float p1, p1

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float v2, p1, p2

    .line 792
    sget p1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    int-to-float p1, p1

    mul-float v3, p1, p2

    move-object v0, p0

    .line 794
    invoke-direct/range {v0 .. v5}, Lcom/brakefield/infinitestudio/ProjectGallery;->revealView(Landroid/view/View;FFII)V

    .line 797
    :cond_7
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectGallery;->setupNewProjectOptions()V

    .line 799
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ProjectGallery;->loadOrder()V

    .line 800
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ProjectGallery;->refresh()V

    .line 802
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectGallery;->hideProgress()V

    return-void
.end method

.method public show(Landroid/view/View;Lcom/brakefield/infinitestudio/ProjectGallery$Project;Z)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1799
    iget-object v2, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->slideshow:Lcom/brakefield/infinitestudio/ui/SlideshowView;

    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->pause()V

    .line 1801
    iput-object v0, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->oldPreviewThumb:Landroid/view/View;

    .line 1803
    iput-object v1, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->previewProject:Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    .line 1805
    iget-object v2, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->smokeScreen:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1807
    iget-object v2, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->previewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1809
    invoke-virtual/range {p2 .. p2}, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->hasFullPreview()Z

    .line 1811
    iget-object v2, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v4, Lcom/brakefield/infinitestudio/R$layout;->project_card:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1812
    new-instance v4, Lcom/brakefield/infinitestudio/ProjectGallery$ViewHolder;

    invoke-direct {v4, v6, v2}, Lcom/brakefield/infinitestudio/ProjectGallery$ViewHolder;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery;Landroid/view/View;)V

    invoke-virtual {v1, v4}, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->bindViewHolder(Lcom/brakefield/infinitestudio/ProjectGallery$ViewHolder;)V

    .line 1814
    new-instance v4, Lcom/brakefield/infinitestudio/ui/RevealFrameLayout;

    iget-object v5, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->activity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Lcom/brakefield/infinitestudio/ui/RevealFrameLayout;-><init>(Landroid/content/Context;)V

    .line 1815
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v5, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/brakefield/infinitestudio/ui/RevealFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1817
    new-instance v5, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda4;

    invoke-direct {v5}, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v4, v5}, Lcom/brakefield/infinitestudio/ui/RevealFrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1819
    invoke-virtual {v4, v2}, Lcom/brakefield/infinitestudio/ui/RevealFrameLayout;->addView(Landroid/view/View;)V

    .line 1821
    iput-object v4, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->preview:Landroid/view/View;

    const/4 v4, 0x4

    .line 1823
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1825
    iget-object v4, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->previewContainer:Landroid/view/ViewGroup;

    iget-object v5, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->preview:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1827
    iget-object v4, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->previewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    .line 1828
    iget-object v5, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->previewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    const/4 v7, 0x2

    new-array v8, v7, [I

    .line 1832
    invoke-virtual {v0, v8}, Landroid/view/View;->getLocationInWindow([I)V

    new-array v0, v7, [I

    .line 1836
    iget-object v7, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->previewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 1841
    iget-object v0, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->preview:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v7, -0x1

    .line 1842
    iput v7, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1843
    iput v7, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1845
    iget-object v7, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->preview:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1847
    iget-object v0, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->preview:Landroid/view/View;

    sget v7, Lcom/brakefield/infinitestudio/R$id;->background:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1848
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1850
    iget-object v0, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->preview:Landroid/view/View;

    sget v7, Lcom/brakefield/infinitestudio/R$id;->options_bar:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1851
    iget-object v7, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->preview:Landroid/view/View;

    sget v8, Lcom/brakefield/infinitestudio/R$id;->name_bar:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1853
    iget-object v8, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->preview:Landroid/view/View;

    sget v9, Lcom/brakefield/infinitestudio/R$id;->top_hint_type:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 1854
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1855
    invoke-virtual/range {p2 .. p2}, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->getTypeIcon()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1857
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1858
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1860
    iget-object v0, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->preview:Landroid/view/View;

    sget v7, Lcom/brakefield/infinitestudio/R$id;->duplicate:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1861
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 1862
    new-instance v7, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda5;

    invoke-direct {v7, v6, v1}, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery;Lcom/brakefield/infinitestudio/ProjectGallery$Project;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1863
    iget-object v0, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->preview:Landroid/view/View;

    sget v7, Lcom/brakefield/infinitestudio/R$id;->duplicate_image:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1865
    iget-object v7, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->preview:Landroid/view/View;

    sget v8, Lcom/brakefield/infinitestudio/R$id;->share:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1866
    invoke-static {v7}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 1867
    new-instance v8, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda6;

    invoke-direct {v8, v6, v1}, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery;Lcom/brakefield/infinitestudio/ProjectGallery$Project;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1868
    iget-object v8, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->preview:Landroid/view/View;

    sget v9, Lcom/brakefield/infinitestudio/R$id;->share_image:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 1870
    iget-boolean v9, v1, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->hasFullPreview:Z

    const/16 v10, 0x8

    if-eqz v9, :cond_0

    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1871
    :cond_0
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1873
    :goto_0
    iget-object v7, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->preview:Landroid/view/View;

    sget v9, Lcom/brakefield/infinitestudio/R$id;->delete:I

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1874
    invoke-static {v7}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 1875
    new-instance v9, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda7;

    invoke-direct {v9, v1}, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda7;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery$Project;)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1876
    iget-object v7, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->preview:Landroid/view/View;

    sget v9, Lcom/brakefield/infinitestudio/R$id;->delete_image:I

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 1878
    iget-object v9, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->preview:Landroid/view/View;

    sget v11, Lcom/brakefield/infinitestudio/R$id;->ungroup:I

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1879
    iget-object v11, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->preview:Landroid/view/View;

    sget v12, Lcom/brakefield/infinitestudio/R$id;->ungroup_image:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 1880
    iget-boolean v12, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->inFolder:Z

    if-eqz v12, :cond_1

    .line 1881
    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1883
    invoke-static {v11}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 1884
    new-instance v3, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda8;

    invoke-direct {v3, v6, v1}, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda8;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery;Lcom/brakefield/infinitestudio/ProjectGallery$Project;)V

    invoke-virtual {v11, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 1897
    :cond_1
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1899
    :goto_1
    iget-object v3, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->preview:Landroid/view/View;

    sget v9, Lcom/brakefield/infinitestudio/R$id;->ungroup_image:I

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1902
    iget-object v9, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->preview:Landroid/view/View;

    sget v11, Lcom/brakefield/infinitestudio/R$id;->drive:I

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1903
    invoke-static {v9}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 1904
    new-instance v11, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda9;

    invoke-direct {v11, v6, v1}, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda9;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery;Lcom/brakefield/infinitestudio/ProjectGallery$Project;)V

    invoke-virtual {v9, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1905
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/ProjectGallery;->supportsGoogleDrive()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->preview:Landroid/view/View;

    sget v11, Lcom/brakefield/infinitestudio/R$id;->drive:I

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1908
    :cond_2
    iget-object v9, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->preview:Landroid/view/View;

    sget v11, Lcom/brakefield/infinitestudio/R$id;->duplicate_text:I

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1909
    iget-object v11, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->preview:Landroid/view/View;

    sget v12, Lcom/brakefield/infinitestudio/R$id;->delete_text:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1910
    iget-object v12, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->preview:Landroid/view/View;

    sget v13, Lcom/brakefield/infinitestudio/R$id;->share_text:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1911
    iget-object v13, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->preview:Landroid/view/View;

    sget v14, Lcom/brakefield/infinitestudio/R$id;->ungroup_text:I

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1912
    iget-object v14, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->preview:Landroid/view/View;

    sget v15, Lcom/brakefield/infinitestudio/R$id;->drive_text:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1914
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v15

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1915
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v9

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1916
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v9

    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1917
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v9

    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1918
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v9

    invoke-virtual {v14, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1921
    iget-object v9, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->preview:Landroid/view/View;

    sget v11, Lcom/brakefield/infinitestudio/R$id;->preview:I

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 1922
    invoke-static {v9}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 1923
    sget-object v11, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1924
    new-instance v11, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda10;

    invoke-direct {v11, v1}, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda10;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery$Project;)V

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1926
    iget-object v1, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->preview:Landroid/view/View;

    sget v9, Lcom/brakefield/infinitestudio/R$id;->small_name_bar:I

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1927
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1929
    iget-object v1, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->preview:Landroid/view/View;

    sget v9, Lcom/brakefield/infinitestudio/R$id;->name:I

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1931
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v9

    .line 1932
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v10

    .line 1934
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1936
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1937
    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1938
    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1939
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1941
    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1943
    iget-object v0, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->touchView:Lcom/brakefield/infinitestudio/ui/TouchView;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/TouchView;->getX()F

    move-result v3

    .line 1944
    iget-object v0, v6, Lcom/brakefield/infinitestudio/ProjectGallery;->touchView:Lcom/brakefield/infinitestudio/ui/TouchView;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/TouchView;->getY()F

    move-result v7

    if-eqz p3, :cond_3

    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v3

    move v3, v7

    .line 1946
    invoke-direct/range {v0 .. v5}, Lcom/brakefield/infinitestudio/ProjectGallery;->revealView(Landroid/view/View;FFII)V

    :cond_3
    return-void
.end method

.method public showFolder(Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;)V
    .locals 3

    .line 1620
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->selectedFolder:Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;

    const/4 v0, 0x1

    .line 1621
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->inFolder:Z

    .line 1622
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ProjectGallery;->refresh()V

    .line 1624
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/brakefield/infinitestudio/R$string;->projects:I

    invoke-static {v2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Lcom/brakefield/infinitestudio/ProjectGallery$ProjectFolder;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1625
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->title:Landroid/widget/TextView;

    new-instance v0, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/ProjectGallery$$ExternalSyntheticLambda11;-><init>(Lcom/brakefield/infinitestudio/ProjectGallery;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1629
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->editGroup:Landroid/widget/ImageView;

    sget v0, Lcom/brakefield/infinitestudio/R$drawable;->ungroup:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1631
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->title:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1632
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->title:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected showProgress()V
    .locals 0

    return-void
.end method

.method protected abstract supportsGoogleDrive()Z
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1649
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "projects"

    .line 1650
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ProjectGallery;->getProjectsJSON()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public unselectProject(Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;)V
    .locals 1

    .line 2088
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->edit:Z

    if-nez v0, :cond_0

    return-void

    .line 2089
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery;->selectedProjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
