.class public Lcom/brakefield/painter/experiments/MockValueProvider;
.super Lcom/brakefield/painter/experiments/ValueProvider;
.source "MockValueProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/painter/experiments/ValueProvider<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/brakefield/painter/experiments/ValueProvider;-><init>()V

    return-void
.end method

.method private changeValuesDelayed(Lcom/brakefield/painter/experiments/Values;)V
    .locals 3

    const-string v0, "--------- Mock Values 2 ----------"

    .line 21
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/utils/Debugger;->print([Ljava/lang/Object;)V

    .line 22
    invoke-virtual {p1}, Lcom/brakefield/painter/experiments/Values;->log()V

    .line 24
    new-instance v0, Lcom/brakefield/painter/experiments/MockValueProvider$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/brakefield/painter/experiments/MockValueProvider$1;-><init>(Lcom/brakefield/painter/experiments/MockValueProvider;Landroid/os/Looper;Lcom/brakefield/painter/experiments/Values;)V

    const/4 p1, 0x0

    const-wide/16 v1, 0x3e8

    .line 33
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public static getMockValues()Lcom/brakefield/painter/experiments/Values;
    .locals 4

    .line 66
    new-instance v0, Lcom/brakefield/painter/experiments/Values;

    invoke-direct {v0}, Lcom/brakefield/painter/experiments/Values;-><init>()V

    const/4 v1, 0x0

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MOCK_INT"

    invoke-virtual {v0, v3, v2}, Lcom/brakefield/painter/experiments/Values;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    .line 68
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "MOCK_LONG"

    invoke-virtual {v0, v3, v2}, Lcom/brakefield/painter/experiments/Values;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 69
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "MOCK_FLOAT"

    invoke-virtual {v0, v3, v2}, Lcom/brakefield/painter/experiments/Values;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    .line 70
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v3, Lcom/brakefield/infinitestudio/color/YQ/FdgWfQQGDtjiVL;->JYgJkamfXXOLPp:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/brakefield/painter/experiments/Values;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "MOCK_STRING"

    const-string v3, "No String"

    .line 71
    invoke-virtual {v0, v2, v3}, Lcom/brakefield/painter/experiments/Values;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "MOCK_BOOLEAN"

    .line 72
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/brakefield/painter/experiments/Values;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 0

    const/4 p1, 0x1

    .line 62
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getDouble(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 2

    const-wide v0, 0x3fdb26c9adde7516L    # 0.42424242

    .line 54
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public getFloat(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 0

    const p1, 0x3ed70a3d    # 0.42f

    .line 50
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public getInt(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    const/16 p1, 0x2a

    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getLong(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 2

    const-wide/32 v0, 0x28757b2

    .line 46
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    const-string p1, "Mock string"

    return-object p1
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 38
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    return-object p1
.end method

.method public setup(Landroid/app/Activity;Lcom/brakefield/painter/experiments/Values;)V
    .locals 0

    .line 16
    invoke-direct {p0, p2}, Lcom/brakefield/painter/experiments/MockValueProvider;->changeValuesDelayed(Lcom/brakefield/painter/experiments/Values;)V

    return-void
.end method
