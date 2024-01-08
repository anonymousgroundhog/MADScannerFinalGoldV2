.class public final Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;
.super Ljava/lang/Object;
.source "SectionParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;
    }
.end annotation


# instance fields
.field public final transient emptyResourceId:Ljava/lang/Integer;

.field public final transient emptyViewWillBeProvided:Z

.field public final transient failedResourceId:Ljava/lang/Integer;

.field public final transient failedViewWillBeProvided:Z

.field public final transient footerResourceId:Ljava/lang/Integer;

.field public final transient footerViewWillBeProvided:Z

.field public final transient headerResourceId:Ljava/lang/Integer;

.field public final transient headerViewWillBeProvided:Z

.field public final transient itemResourceId:Ljava/lang/Integer;

.field public final transient itemViewWillBeProvided:Z

.field public final transient loadingResourceId:Ljava/lang/Integer;

.field public final transient loadingViewWillBeProvided:Z


# direct methods
.method private constructor <init>(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;)V
    .locals 11

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->access$000(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;->itemResourceId:Ljava/lang/Integer;

    .line 31
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->access$100(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;->headerResourceId:Ljava/lang/Integer;

    .line 32
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->access$200(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;->footerResourceId:Ljava/lang/Integer;

    .line 33
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->access$300(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;->loadingResourceId:Ljava/lang/Integer;

    .line 34
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->access$400(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;->failedResourceId:Ljava/lang/Integer;

    .line 35
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->access$500(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;->emptyResourceId:Ljava/lang/Integer;

    .line 36
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->access$600(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;->itemViewWillBeProvided:Z

    .line 37
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->access$700(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;->headerViewWillBeProvided:Z

    .line 38
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->access$800(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;->footerViewWillBeProvided:Z

    .line 39
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->access$900(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;->loadingViewWillBeProvided:Z

    .line 40
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->access$1000(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;->failedViewWillBeProvided:Z

    .line 41
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->access$1100(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;->emptyViewWillBeProvided:Z

    if-eqz v0, :cond_1

    if-nez v6, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "itemResourceId and itemViewWillBeProvided cannot both be set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz v6, :cond_2

    goto :goto_1

    .line 47
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Either itemResourceId or itemViewWillBeProvided must be set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    if-eqz v1, :cond_5

    if-nez v7, :cond_4

    goto :goto_2

    .line 51
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "headerResourceId and headerViewWillBeProvided cannot both be set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    if-eqz v2, :cond_7

    if-nez v8, :cond_6

    goto :goto_3

    .line 55
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "footerResourceId and footerViewWillBeProvided cannot both be set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_3
    if-eqz v3, :cond_9

    if-nez v9, :cond_8

    goto :goto_4

    .line 59
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "loadingResourceId and loadingViewWillBeProvided cannot both be set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_4
    if-eqz v4, :cond_b

    if-nez v10, :cond_a

    goto :goto_5

    .line 63
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "failedResourceId and failedViewWillBeProvided cannot both be set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_5
    if-eqz v5, :cond_d

    if-nez p1, :cond_c

    goto :goto_6

    .line 67
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "emptyResourceId and emptyViewWillBeProvided cannot both be set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    :goto_6
    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;-><init>(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;)V

    return-void
.end method

.method public static builder()Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;
    .locals 2

    .line 78
    new-instance v0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;-><init>(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$1;)V

    return-object v0
.end method
