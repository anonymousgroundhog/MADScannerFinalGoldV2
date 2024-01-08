.class Lcom/brakefield/infinitestudio/image/filters/SeamCarveFilter$Seam;
.super Ljava/lang/Object;
.source "SeamCarveFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/filters/SeamCarveFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Seam"
.end annotation


# instance fields
.field energy:I

.field index:I

.field final synthetic this$0:Lcom/brakefield/infinitestudio/image/filters/SeamCarveFilter;

.field values:[I


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/image/filters/SeamCarveFilter;II)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/filters/SeamCarveFilter$Seam;->this$0:Lcom/brakefield/infinitestudio/image/filters/SeamCarveFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 163
    iput p1, p0, Lcom/brakefield/infinitestudio/image/filters/SeamCarveFilter$Seam;->index:I

    .line 166
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/brakefield/infinitestudio/image/filters/SeamCarveFilter$Seam;->values:[I

    .line 167
    aput p3, p2, p1

    const/4 p1, 0x1

    .line 168
    iput p1, p0, Lcom/brakefield/infinitestudio/image/filters/SeamCarveFilter$Seam;->index:I

    return-void
.end method


# virtual methods
.method public add(II)V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/filters/SeamCarveFilter$Seam;->values:[I

    iget v1, p0, Lcom/brakefield/infinitestudio/image/filters/SeamCarveFilter$Seam;->index:I

    aput p1, v0, v1

    .line 173
    iget p1, p0, Lcom/brakefield/infinitestudio/image/filters/SeamCarveFilter$Seam;->energy:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/brakefield/infinitestudio/image/filters/SeamCarveFilter$Seam;->energy:I

    add-int/lit8 v1, v1, 0x1

    .line 174
    iput v1, p0, Lcom/brakefield/infinitestudio/image/filters/SeamCarveFilter$Seam;->index:I

    return-void
.end method
