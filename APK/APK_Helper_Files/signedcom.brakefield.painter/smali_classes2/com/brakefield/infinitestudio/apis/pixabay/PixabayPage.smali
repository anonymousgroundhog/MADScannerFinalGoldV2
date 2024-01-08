.class public Lcom/brakefield/infinitestudio/apis/pixabay/PixabayPage;
.super Ljava/lang/Object;
.source "PixabayPage.java"


# instance fields
.field public images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/ImageBean;",
            ">;"
        }
    .end annotation
.end field

.field public final page:I

.field public totalItems:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayPage;->images:Ljava/util/List;

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayPage;->totalItems:I

    .line 15
    iput p1, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayPage;->page:I

    return-void
.end method
