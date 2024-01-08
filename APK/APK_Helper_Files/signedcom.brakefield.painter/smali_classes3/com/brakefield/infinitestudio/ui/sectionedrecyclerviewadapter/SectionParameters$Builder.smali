.class public Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;
.super Ljava/lang/Object;
.source "SectionParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private transient emptyResourceId:Ljava/lang/Integer;

.field private transient emptyViewWillBeProvided:Z

.field private transient failedResourceId:Ljava/lang/Integer;

.field private transient failedViewWillBeProvided:Z

.field private transient footerResourceId:Ljava/lang/Integer;

.field private transient footerViewWillBeProvided:Z

.field private transient headerResourceId:Ljava/lang/Integer;

.field private transient headerViewWillBeProvided:Z

.field private transient itemResourceId:Ljava/lang/Integer;

.field private transient itemViewWillBeProvided:Z

.field private transient loadingResourceId:Ljava/lang/Integer;

.field private transient loadingViewWillBeProvided:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$1;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->itemResourceId:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->headerResourceId:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->failedViewWillBeProvided:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->emptyViewWillBeProvided:Z

    return p0
.end method

.method static synthetic access$200(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->footerResourceId:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->loadingResourceId:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->failedResourceId:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->emptyResourceId:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->itemViewWillBeProvided:Z

    return p0
.end method

.method static synthetic access$700(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->headerViewWillBeProvided:Z

    return p0
.end method

.method static synthetic access$800(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->footerViewWillBeProvided:Z

    return p0
.end method

.method static synthetic access$900(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->loadingViewWillBeProvided:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;
    .locals 2

    .line 260
    new-instance v0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;-><init>(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$1;)V

    return-object v0
.end method

.method public emptyResourceId(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;
    .locals 0

    .line 237
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->emptyResourceId:Ljava/lang/Integer;

    return-object p0
.end method

.method public emptyViewWillBeProvided()Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 249
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->emptyViewWillBeProvided:Z

    return-object p0
.end method

.method public failedResourceId(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;
    .locals 0

    .line 213
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->failedResourceId:Ljava/lang/Integer;

    return-object p0
.end method

.method public failedViewWillBeProvided()Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 225
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->failedViewWillBeProvided:Z

    return-object p0
.end method

.method public footerResourceId(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;
    .locals 0

    .line 165
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->footerResourceId:Ljava/lang/Integer;

    return-object p0
.end method

.method public footerViewWillBeProvided()Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 177
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->footerViewWillBeProvided:Z

    return-object p0
.end method

.method public headerResourceId(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;
    .locals 0

    .line 141
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->headerResourceId:Ljava/lang/Integer;

    return-object p0
.end method

.method public headerViewWillBeProvided()Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->headerViewWillBeProvided:Z

    return-object p0
.end method

.method public itemResourceId(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;
    .locals 0

    .line 117
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->itemResourceId:Ljava/lang/Integer;

    return-object p0
.end method

.method public itemViewWillBeProvided()Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->itemViewWillBeProvided:Z

    return-object p0
.end method

.method public loadingResourceId(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;
    .locals 0

    .line 189
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->loadingResourceId:Ljava/lang/Integer;

    return-object p0
.end method

.method public loadingViewWillBeProvided()Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->loadingViewWillBeProvided:Z

    return-object p0
.end method
