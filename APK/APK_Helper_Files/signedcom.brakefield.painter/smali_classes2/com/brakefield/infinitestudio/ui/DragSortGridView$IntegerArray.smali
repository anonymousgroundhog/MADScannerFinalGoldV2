.class Lcom/brakefield/infinitestudio/ui/DragSortGridView$IntegerArray;
.super Ljava/lang/Object;
.source "DragSortGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/ui/DragSortGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntegerArray"
.end annotation


# instance fields
.field private data:[I

.field final synthetic this$0:Lcom/brakefield/infinitestudio/ui/DragSortGridView;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/ui/DragSortGridView;I)V
    .locals 1

    .line 66
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$IntegerArray;->this$0:Lcom/brakefield/infinitestudio/ui/DragSortGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-array p1, p2, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 69
    aput v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$IntegerArray;->data:[I

    return-void
.end method


# virtual methods
.method public get(I)I
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$IntegerArray;->data:[I

    aget p1, v0, p1

    return p1
.end method

.method public getValueIndex(I)I
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$IntegerArray;->data:[I

    .line 101
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 103
    aget v3, v0, v2

    if-ne p1, v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public reorder(II)V
    .locals 4

    if-ne p1, p2, :cond_0

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$IntegerArray;->data:[I

    if-ge p1, p2, :cond_2

    .line 89
    aget v1, v0, p1

    :goto_0
    if-ge p1, p2, :cond_1

    add-int/lit8 v2, p1, 0x1

    .line 90
    aget v3, v0, v2

    aput v3, v0, p1

    move p1, v2

    goto :goto_0

    .line 91
    :cond_1
    aput v1, v0, p2

    goto :goto_2

    .line 93
    :cond_2
    aget v1, v0, p1

    :goto_1
    if-le p1, p2, :cond_3

    add-int/lit8 v2, p1, -0x1

    .line 94
    aget v2, v0, v2

    aput v2, v0, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 95
    :cond_3
    aput v1, v0, p2

    :goto_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$IntegerArray;->data:[I

    .line 113
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 114
    aget v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "]"

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
