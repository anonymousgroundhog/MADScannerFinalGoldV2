.class Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$SavedState;
.super Ljava/lang/Object;
.source "CarouselLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field scrollOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 936
    new-instance v0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$SavedState$1;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$SavedState$1;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 950
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 954
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 955
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$SavedState;->scrollOffset:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$1;)V
    .locals 0

    .line 934
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 965
    iget p2, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$SavedState;->scrollOffset:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
