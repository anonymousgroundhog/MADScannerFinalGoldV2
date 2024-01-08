.class public Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;
.super Ljava/lang/Object;
.source "Symmetry.java"


# static fields
.field public static final JSON_PIVOT_X:Ljava/lang/String; = "pivot-x"

.field public static final JSON_PIVOT_Y:Ljava/lang/String; = "pivot-y"

.field public static final JSON_PLANES:Ljava/lang/String; = "planes"

.field public static final JSON_STEMS:Ljava/lang/String; = "stems"

.field public static final JSON_SWEEP:Ljava/lang/String; = "sweep"

.field public static final JSON_SYM_KALEIDO:Ljava/lang/String; = "sym-kaleido"

.field public static final JSON_SYM_RADIAL:Ljava/lang/String; = "sym-radial"

.field public static final JSON_SYM_X:Ljava/lang/String; = "sym-x"

.field public static final JSON_SYM_Y:Ljava/lang/String; = "sym-y"

.field public static final KALEIDO:I = 0x5

.field public static final NONE:I = 0x0

.field public static final RADIAL:I = 0x4

.field public static final X:I = 0x1

.field public static final Y:I = 0x2

.field public static clip:Z

.field public static lock:Z

.field private static sym:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

.field private static symKaleido:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

.field private static symNone:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

.field private static symRadial:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

.field private static symX:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

.field private static symY:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

.field private static type:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 37
    new-instance v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymNone;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymNone;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->symNone:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    .line 38
    new-instance v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;-><init>(FFFF)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->symX:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    .line 39
    new-instance v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;-><init>(FFFF)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->symY:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    .line 40
    new-instance v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;

    const/4 v2, 0x6

    const v3, 0x40c90fdb

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;-><init>(FFIF)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->symRadial:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    .line 41
    new-instance v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v1, v2, v1}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;-><init>(FFIF)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->symKaleido:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    const/4 v0, 0x0

    .line 43
    sput v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->type:I

    .line 44
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->symNone:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    sput-object v1, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->sym:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    const/4 v1, 0x1

    .line 46
    sput-boolean v1, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->clip:Z

    .line 47
    sput-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->lock:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindSettings(Landroid/app/Activity;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 206
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->sym:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->bindSettings(Landroid/app/Activity;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View$OnClickListener;)V

    .line 208
    sget p0, Lcom/brakefield/infinitestudio/R$id;->lock_toggle:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;

    .line 209
    new-instance p2, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p2}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 213
    sget-object p2, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->sym:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    iget-boolean p2, p2, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->adjust:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p2}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->setChecked(Z)V

    .line 215
    sget p0, Lcom/brakefield/infinitestudio/R$id;->clip_toggle:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;

    .line 216
    new-instance p1, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 220
    sget-boolean p1, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->clip:Z

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->setChecked(Z)V

    return-void
.end method

.method public static center()V
    .locals 7

    .line 58
    new-instance v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->h:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sget v3, Lcom/brakefield/infinitestudio/sketchbook/Camera;->w:I

    int-to-float v3, v3

    sget v4, Lcom/brakefield/infinitestudio/sketchbook/Camera;->h:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    const/4 v5, 0x0

    invoke-direct {v0, v5, v1, v3, v4}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;-><init>(FFFF)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->symX:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    .line 59
    new-instance v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->w:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sget v3, Lcom/brakefield/infinitestudio/sketchbook/Camera;->w:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    sget v4, Lcom/brakefield/infinitestudio/sketchbook/Camera;->h:I

    int-to-float v4, v4

    invoke-direct {v0, v1, v5, v3, v4}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;-><init>(FFFF)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->symY:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    .line 60
    new-instance v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->w:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sget v3, Lcom/brakefield/infinitestudio/sketchbook/Camera;->h:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    const/4 v4, 0x6

    const v6, 0x40c90fdb

    invoke-direct {v0, v1, v3, v4, v6}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;-><init>(FFIF)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->symRadial:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    .line 61
    new-instance v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->w:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sget v3, Lcom/brakefield/infinitestudio/sketchbook/Camera;->h:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2, v5}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;-><init>(FFIF)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->symKaleido:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    return-void
.end method

.method public static declared-synchronized drawControls(Landroid/graphics/Canvas;)V
    .locals 2

    const-class v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->sym:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    invoke-virtual {v1, p0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getClippingPlane(FF)I
    .locals 1

    .line 73
    sget-boolean v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->clip:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 74
    :cond_0
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->sym:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    invoke-virtual {v0, p0, p1}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->getClippingPlane(FF)I

    move-result p0

    return p0
.end method

.method public static getJSON()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 100
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 102
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->symX:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->getJSON()Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "sym-x"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->symY:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->getJSON()Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "sym-y"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->symRadial:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->getJSON()Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "sym-radial"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->symKaleido:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->getJSON()Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "sym-kaleido"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static getMatricesFromAttributes(Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymmetryAttributes;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymmetryAttributes;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymmetryAttributes;->getSymmetries()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getSymmetries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation

    .line 65
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->sym:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->getMatrices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getSymmetry()Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;
    .locals 1

    .line 201
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->sym:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    return-object v0
.end method

.method public static getType()I
    .locals 1

    .line 156
    sget v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->type:I

    return v0
.end method

.method static synthetic lambda$bindSettings$0(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 210
    sget-object p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->sym:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->adjust:Z

    .line 211
    sget-object p0, Lcom/brakefield/infinitestudio/Main;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic lambda$bindSettings$1(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 217
    sput-boolean p1, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->clip:Z

    .line 218
    sget-object p0, Lcom/brakefield/infinitestudio/Main;->handler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public static load()V
    .locals 10

    const-string v0, "pivot-x"

    const/4 v1, 0x0

    .line 112
    sput v1, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->type:I

    .line 114
    :try_start_0
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getTempProjectPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "symmetry.json"

    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/FileManager;->getFileInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 117
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 121
    :cond_0
    new-instance v4, Lorg/json/JSONTokener;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 123
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 125
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v0, v4

    const-string v4, "pivot-y"

    .line 126
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    const-string v5, "planes"

    .line 127
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "stems"

    .line 128
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v7, "sweep"

    .line 129
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-float v3, v7

    .line 131
    new-instance v7, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;

    sget v8, Lcom/brakefield/infinitestudio/sketchbook/Camera;->w:I

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-direct {v7, v9, v4, v8, v4}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;-><init>(FFFF)V

    sput-object v7, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->symX:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    .line 132
    new-instance v7, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;

    sget v8, Lcom/brakefield/infinitestudio/sketchbook/Camera;->h:I

    int-to-float v8, v8

    invoke-direct {v7, v0, v9, v0, v8}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;-><init>(FFFF)V

    sput-object v7, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->symY:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    .line 133
    new-instance v7, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;

    invoke-direct {v7, v0, v4, v6, v3}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;-><init>(FFIF)V

    sput-object v7, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->symRadial:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    .line 134
    new-instance v3, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;

    invoke-direct {v3, v0, v4, v5, v9}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;-><init>(FFIF)V

    sput-object v3, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->symKaleido:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    goto :goto_1

    .line 138
    :cond_1
    new-instance v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymmetryAttributes;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymmetryAttributes;-><init>()V

    const-string/jumbo v4, "sym-x"

    .line 139
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymmetryAttributes;->loadJSON(Lorg/json/JSONObject;)V

    .line 140
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymmetryAttributes;->getSymmetry()Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    move-result-object v4

    sput-object v4, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->symX:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    const-string/jumbo v4, "sym-y"

    .line 141
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymmetryAttributes;->loadJSON(Lorg/json/JSONObject;)V

    .line 142
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymmetryAttributes;->getSymmetry()Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    move-result-object v4

    sput-object v4, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->symY:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    const-string/jumbo v4, "sym-radial"

    .line 143
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymmetryAttributes;->loadJSON(Lorg/json/JSONObject;)V

    .line 144
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymmetryAttributes;->getSymmetry()Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    move-result-object v4

    sput-object v4, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->symRadial:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    const-string/jumbo v4, "sym-kaleido"

    .line 145
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymmetryAttributes;->loadJSON(Lorg/json/JSONObject;)V

    .line 146
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymmetryAttributes;->getSymmetry()Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->symKaleido:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 114
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    :try_start_6
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    if-eqz v1, :cond_2

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v1

    :try_start_8
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_4
    return-void
.end method

.method public static onDown(FF)Z
    .locals 1

    .line 189
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->sym:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    invoke-virtual {v0, p0, p1}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->onDown(FF)Z

    move-result p0

    return p0
.end method

.method public static onLongpress(FF)Z
    .locals 1

    .line 185
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->sym:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    invoke-virtual {v0, p0, p1}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->onLongpress(FF)Z

    move-result p0

    return p0
.end method

.method public static onMove(FF)Z
    .locals 1

    .line 193
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->sym:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    invoke-virtual {v0, p0, p1}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->onMove(FF)Z

    move-result p0

    return p0
.end method

.method public static onTap(FF)Z
    .locals 1

    .line 181
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->sym:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    invoke-virtual {v0, p0, p1}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->onTap(FF)Z

    move-result p0

    return p0
.end method

.method public static onUp()Z
    .locals 1

    .line 197
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->sym:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->onUp()Z

    move-result v0

    return v0
.end method

.method public static save()V
    .locals 3

    .line 78
    :try_start_0
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getTempProjectPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "symmetry.json"

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/FileManager;->getFileOutputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :try_start_1
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 80
    :try_start_2
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->getJSON()Lorg/json/JSONObject;

    move-result-object v2

    .line 81
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    :try_start_3
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v2

    .line 78
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

    if-eqz v0, :cond_0

    :try_start_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    return-void
.end method

.method public static setType(I)V
    .locals 1

    .line 160
    sput p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->type:I

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    sget-object p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->symKaleido:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    sput-object p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->sym:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    goto :goto_0

    .line 172
    :cond_1
    sget-object p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->symRadial:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    sput-object p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->sym:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    goto :goto_0

    .line 169
    :cond_2
    sget-object p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->symY:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    sput-object p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->sym:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    goto :goto_0

    .line 166
    :cond_3
    sget-object p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->symX:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    sput-object p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->sym:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    goto :goto_0

    .line 163
    :cond_4
    sget-object p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->symNone:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    sput-object p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->sym:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    :goto_0
    return-void
.end method

.method public static transform(Landroid/graphics/Matrix;)V
    .locals 1

    .line 54
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Symmetry;->sym:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    invoke-virtual {v0, p0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method
