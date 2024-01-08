.class public Lcom/brakefield/painter/brushes/brushfolders/Brush;
.super Ljava/lang/Object;
.source "Brush.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/brakefield/painter/brushes/brushfolders/Brush;",
        ">;"
    }
.end annotation


# static fields
.field public static final JSON_HIDDEN:Ljava/lang/String; = "hidden"

.field public static final JSON_ID:Ljava/lang/String; = "id"

.field public static final JSON_NAME:Ljava/lang/String; = "name"

.field public static quickSelectBrush:Lcom/brakefield/painter/brushes/brushfolders/Brush;


# instance fields
.field public colorBrush:Z

.field private displayName:Ljava/lang/String;

.field public folder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

.field public hidden:Z

.field private id:I

.field private name:Ljava/lang/String;

.field public view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->displayName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->hidden:Z

    .line 23
    iput-boolean v0, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->colorBrush:Z

    .line 27
    iput-object p1, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->folder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    .line 28
    iput p2, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->id:I

    .line 29
    iput-object p3, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->displayName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->hidden:Z

    .line 23
    iput-boolean v0, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->colorBrush:Z

    .line 33
    iput-object p1, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->folder:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    const-string p1, "id"

    .line 34
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->id:I

    const-string p1, "name"

    .line 35
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->name:Ljava/lang/String;

    const-string p1, "hidden"

    .line 36
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->hidden:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/brakefield/painter/brushes/brushfolders/Brush;)I
    .locals 2

    .line 93
    invoke-virtual {p0}, Lcom/brakefield/painter/brushes/brushfolders/Brush;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/brakefield/painter/brushes/brushfolders/Brush;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/brakefield/painter/brushes/brushfolders/Brush;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/brakefield/painter/brushes/brushfolders/Brush;->getId()I

    move-result p1

    sub-int/2addr v0, p1

    return v0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->name:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/brakefield/painter/brushes/brushfolders/Brush;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->name:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/brakefield/painter/brushes/brushfolders/Brush;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/brakefield/painter/brushes/brushfolders/Brush;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 15
    check-cast p1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/brushes/brushfolders/Brush;->compareTo(Lcom/brakefield/painter/brushes/brushfolders/Brush;)I

    move-result p1

    return p1
.end method

.method public copy(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)Lcom/brakefield/painter/brushes/brushfolders/Brush;
    .locals 3

    .line 86
    new-instance v0, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    iget v1, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->id:I

    iget-object v2, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->name:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    .line 87
    iget-boolean p1, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->hidden:Z

    iput-boolean p1, v0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->hidden:Z

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 102
    :cond_0
    const-class v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 103
    :cond_1
    check-cast p1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    .line 104
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/brushes/brushfolders/Brush;->compareTo(Lcom/brakefield/painter/brushes/brushfolders/Brush;)I

    move-result p1

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->displayName:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/brakefield/painter/brushes/brushfolders/Brush;->refreshDisplayName()V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->id:I

    return v0
.end method

.method public getJSON()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 61
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "name"

    .line 62
    iget-object v2, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "id"

    .line 63
    iget v2, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->id:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "hidden"

    .line 64
    iget-boolean v2, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->hidden:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getView(Landroid/app/Activity;)Landroid/view/View;
    .locals 2

    .line 41
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0032

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->view:Landroid/view/View;

    return-object p1
.end method

.method public isCustom()Z
    .locals 2

    .line 78
    iget v0, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->id:I

    if-eqz v0, :cond_1

    const/16 v1, 0x270f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSelected()Z
    .locals 5

    .line 46
    sget-object v0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->quickSelectBrush:Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 48
    :cond_1
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushType()I

    move-result v0

    iget v3, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->id:I

    if-ne v0, v3, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    const/16 v4, 0x270f

    if-eq v3, v4, :cond_3

    if-nez v3, :cond_5

    .line 50
    :cond_3
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushCustomName()Ljava/lang/String;

    move-result-object v0

    .line 51
    iget-object v3, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    move v0, v1

    :cond_5
    return v0
.end method

.method refreshDisplayName()V
    .locals 2

    .line 108
    iget v0, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->id:I

    iget-object v1, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/brakefield/painter/PainterLib;->getBrushDisplayName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->displayName:Ljava/lang/String;

    .line 109
    iget v0, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->id:I

    iget-object v1, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/brakefield/painter/PainterLib;->isColorBrush(ILjava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->colorBrush:Z

    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 2

    .line 113
    iput-object p1, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->displayName:Ljava/lang/String;

    .line 114
    iget v0, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->id:I

    iget-object v1, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->name:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/brakefield/painter/PainterLib;->setBrushDisplayName(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 117
    iput p1, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/brakefield/painter/brushes/brushfolders/Brush;->name:Ljava/lang/String;

    return-void
.end method
