.class public Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;
.super Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;
.source "LegacyFolder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public init()V
    .locals 5

    const v0, 0x7f120236

    .line 12
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->name:Ljava/lang/String;

    const v0, 0x7f080098

    .line 14
    iput v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->iconId:I

    .line 16
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0x64

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v4}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0x66

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v4}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0x15e

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v4}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0x65

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v4}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0x15f

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v4}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0x6a

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v4}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0x162

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v4}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0x69

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v4}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0x163

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v4}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0x160

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v4}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0x6b

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v4}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0x12c

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v4}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0x12d

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v4}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0x136

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v4}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0x137

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v4}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0x133

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v4}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0x132

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v4}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0x138

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v4}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0x135

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v4}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0x192

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v4}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0x196

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v4}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0x194

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x194

    invoke-direct {v1, p0, v4, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0x197

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x197

    invoke-direct {v1, p0, v4, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0x139

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x139

    invoke-direct {v1, p0, v4, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0xc8

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xc8

    invoke-direct {v1, p0, v4, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0xc9

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xc9

    invoke-direct {v1, p0, v4, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0xce

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xce

    invoke-direct {v1, p0, v4, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0xcc

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xcc

    invoke-direct {v1, p0, v4, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0xcd

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xcd

    invoke-direct {v1, p0, v4, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0xca

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xca

    invoke-direct {v1, p0, v4, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0xcf

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xcf

    invoke-direct {v1, p0, v4, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0x1c2

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x1c2

    invoke-direct {v1, p0, v4, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0x1c3

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x1c3

    invoke-direct {v1, p0, v4, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0x1c4

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x1c4

    invoke-direct {v1, p0, v4, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0x1c5

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x1c5

    invoke-direct {v1, p0, v4, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0x1c6

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x1c6

    invoke-direct {v1, p0, v4, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0x1ca

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x1ca

    invoke-direct {v1, p0, v4, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0x1c8

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x1c8

    invoke-direct {v1, p0, v4, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0x1c7

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x1c7

    invoke-direct {v1, p0, v4, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0x514

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x514

    invoke-direct {v1, p0, v4, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0x515

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x515

    invoke-direct {v1, p0, v4, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0x516

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x516

    invoke-direct {v1, p0, v4, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0x517

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x517

    invoke-direct {v1, p0, v4, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0x518

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x518

    invoke-direct {v1, p0, v4, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0x519

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x519

    invoke-direct {v1, p0, v4, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0x51a

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x51a

    invoke-direct {v1, p0, v4, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/LegacyFolder;->defaultBrushes:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    const/16 v2, 0x51b

    invoke-static {v2, v3}, Lcom/brakefield/painter/PainterLib;->getBrushName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x51b

    invoke-direct {v1, p0, v3, v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_0
    invoke-super {p0}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->init()V

    return-void
.end method
