.class public Lorg/ejml/equation/ManagerFunctions;
.super Ljava/lang/Object;
.source "ManagerFunctions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ejml/equation/ManagerFunctions$Input1;,
        Lorg/ejml/equation/ManagerFunctions$InputN;
    }
.end annotation


# instance fields
.field input1:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/ejml/equation/ManagerFunctions$Input1;",
            ">;"
        }
    .end annotation
.end field

.field inputN:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/ejml/equation/ManagerFunctions$InputN;",
            ">;"
        }
    .end annotation
.end field

.field protected managerTemp:Lorg/ejml/equation/ManagerTempVariables;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->input1:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->inputN:Ljava/util/Map;

    .line 44
    invoke-direct {p0}, Lorg/ejml/equation/ManagerFunctions;->addBuiltIn()V

    return-void
.end method

.method private addBuiltIn()V
    .locals 6

    .line 171
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->input1:Ljava/util/Map;

    new-instance v1, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "inv"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->input1:Ljava/util/Map;

    new-instance v1, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda2;-><init>()V

    const-string v2, "pinv"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->input1:Ljava/util/Map;

    new-instance v1, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda14;-><init>()V

    const-string v2, "rref"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->input1:Ljava/util/Map;

    new-instance v1, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda19;

    invoke-direct {v1}, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda19;-><init>()V

    const-string v2, "eye"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->input1:Ljava/util/Map;

    new-instance v1, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda20;

    invoke-direct {v1}, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda20;-><init>()V

    const-string v2, "det"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->input1:Ljava/util/Map;

    new-instance v1, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda21;

    invoke-direct {v1}, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda21;-><init>()V

    const/4 v2, 0x0

    sget-object v2, Landroidx/constraintlayout/motion/widget/Opu/AFxbOaHHHN;->LsJXpu:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->input1:Ljava/util/Map;

    new-instance v1, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda23;

    invoke-direct {v1}, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda23;-><init>()V

    const-string/jumbo v2, "sum"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->input1:Ljava/util/Map;

    new-instance v1, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda24;

    invoke-direct {v1}, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda24;-><init>()V

    const-string/jumbo v3, "trace"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->input1:Ljava/util/Map;

    new-instance v1, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda25;

    invoke-direct {v1}, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda25;-><init>()V

    const-string v3, "diag"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->input1:Ljava/util/Map;

    new-instance v1, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda26;

    invoke-direct {v1}, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda26;-><init>()V

    const-string v3, "min"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->input1:Ljava/util/Map;

    new-instance v1, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda11;-><init>()V

    const-string v4, "max"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->input1:Ljava/util/Map;

    new-instance v1, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda22;

    invoke-direct {v1}, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda22;-><init>()V

    const-string v5, "abs"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->input1:Ljava/util/Map;

    new-instance v1, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda27;

    invoke-direct {v1}, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda27;-><init>()V

    const-string/jumbo v5, "sin"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->input1:Ljava/util/Map;

    new-instance v1, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda28;

    invoke-direct {v1}, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda28;-><init>()V

    const-string v5, "cos"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->input1:Ljava/util/Map;

    new-instance v1, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda29;

    invoke-direct {v1}, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda29;-><init>()V

    const-string v5, "atan"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->input1:Ljava/util/Map;

    new-instance v1, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda30;

    invoke-direct {v1}, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda30;-><init>()V

    const-string v5, "exp"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->input1:Ljava/util/Map;

    new-instance v1, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda31;

    invoke-direct {v1}, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda31;-><init>()V

    const-string v5, "log"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->input1:Ljava/util/Map;

    new-instance v1, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda32;

    invoke-direct {v1}, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda32;-><init>()V

    const/4 v5, 0x0

    sget-object v5, Lcom/google/android/exoplayer2/source/smoothstreaming/dG/norGc;->YAQjWnEsGJmYgjX:Ljava/lang/String;

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->input1:Ljava/util/Map;

    new-instance v1, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda33;

    invoke-direct {v1}, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda33;-><init>()V

    const-string v5, "rng"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->inputN:Ljava/util/Map;

    new-instance v1, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda1;-><init>()V

    const-string v5, "normP"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->inputN:Ljava/util/Map;

    new-instance v1, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->inputN:Ljava/util/Map;

    new-instance v1, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->inputN:Ljava/util/Map;

    new-instance v1, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->inputN:Ljava/util/Map;

    new-instance v1, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda6;-><init>()V

    const-string/jumbo v2, "zeros"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->inputN:Ljava/util/Map;

    new-instance v1, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda7;-><init>()V

    const-string v2, "ones"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->inputN:Ljava/util/Map;

    new-instance v1, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda8;-><init>()V

    const-string v2, "rand"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->inputN:Ljava/util/Map;

    new-instance v1, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda9;-><init>()V

    const-string v2, "randn"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->inputN:Ljava/util/Map;

    new-instance v1, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda10;-><init>()V

    const-string v2, "kron"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->inputN:Ljava/util/Map;

    new-instance v1, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda12;-><init>()V

    const-string v2, "dot"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->inputN:Ljava/util/Map;

    new-instance v1, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda13;-><init>()V

    const-string v2, "pow"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->inputN:Ljava/util/Map;

    new-instance v1, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda15;-><init>()V

    const-string v2, "atan2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->inputN:Ljava/util/Map;

    new-instance v1, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda16;-><init>()V

    const-string/jumbo v2, "solve"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->inputN:Ljava/util/Map;

    new-instance v1, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda17;

    invoke-direct {v1}, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda17;-><init>()V

    const-string v2, "extract"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->inputN:Ljava/util/Map;

    new-instance v1, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda18;

    invoke-direct {v1}, Lorg/ejml/equation/ManagerFunctions$$ExternalSyntheticLambda18;-><init>()V

    const-string v2, "extractScalar"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$addBuiltIn$0(Ljava/util/List;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 2

    .line 192
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 193
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ejml/equation/Variable;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/ejml/equation/Variable;

    invoke-static {v0, p0, p1}, Lorg/ejml/equation/Operation;->normP(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;

    move-result-object p0

    return-object p0

    .line 192
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Two inputs expected"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$addBuiltIn$1(Ljava/util/List;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 2

    .line 197
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 198
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ejml/equation/Variable;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/ejml/equation/Variable;

    invoke-static {v0, p0, p1}, Lorg/ejml/equation/Operation;->max_two(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;

    move-result-object p0

    return-object p0

    .line 197
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "One or two inputs expected"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$addBuiltIn$10(Ljava/util/List;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 2

    .line 242
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 243
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ejml/equation/Variable;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/ejml/equation/Variable;

    invoke-static {v0, p0, p1}, Lorg/ejml/equation/Operation;->pow(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;

    move-result-object p0

    return-object p0

    .line 242
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Two inputs expected"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$addBuiltIn$11(Ljava/util/List;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 2

    .line 247
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 248
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ejml/equation/Variable;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/ejml/equation/Variable;

    invoke-static {v0, p0, p1}, Lorg/ejml/equation/Operation;->atan2(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;

    move-result-object p0

    return-object p0

    .line 247
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Two inputs expected"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$addBuiltIn$12(Ljava/util/List;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 2

    .line 252
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 253
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ejml/equation/Variable;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/ejml/equation/Variable;

    invoke-static {v0, p0, p1}, Lorg/ejml/equation/Operation;->solve(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;

    move-result-object p0

    return-object p0

    .line 252
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Two inputs expected"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$addBuiltIn$13(Ljava/util/List;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 2

    .line 258
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Two or three inputs expected"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 259
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lorg/ejml/equation/Operation;->extractScalar(Ljava/util/List;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$addBuiltIn$2(Ljava/util/List;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 2

    .line 202
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 203
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ejml/equation/Variable;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/ejml/equation/Variable;

    invoke-static {v0, p0, p1}, Lorg/ejml/equation/Operation;->min_two(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;

    move-result-object p0

    return-object p0

    .line 202
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "One or two inputs expected"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$addBuiltIn$3(Ljava/util/List;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 2

    .line 207
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 208
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ejml/equation/Variable;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/ejml/equation/Variable;

    invoke-static {v0, p0, p1}, Lorg/ejml/equation/Operation;->sum_two(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;

    move-result-object p0

    return-object p0

    .line 207
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "One or two inputs expected"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$addBuiltIn$4(Ljava/util/List;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 2

    .line 212
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 213
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ejml/equation/Variable;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/ejml/equation/Variable;

    invoke-static {v0, p0, p1}, Lorg/ejml/equation/Operation;->zeros(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;

    move-result-object p0

    return-object p0

    .line 212
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Two inputs expected"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$addBuiltIn$5(Ljava/util/List;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 2

    .line 217
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 218
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ejml/equation/Variable;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/ejml/equation/Variable;

    invoke-static {v0, p0, p1}, Lorg/ejml/equation/Operation;->ones(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;

    move-result-object p0

    return-object p0

    .line 217
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Two inputs expected"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$addBuiltIn$6(Ljava/util/List;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 2

    .line 222
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 223
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ejml/equation/Variable;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/ejml/equation/Variable;

    invoke-static {v0, p0, p1}, Lorg/ejml/equation/Operation;->rand(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;

    move-result-object p0

    return-object p0

    .line 222
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Two inputs expected"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$addBuiltIn$7(Ljava/util/List;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 2

    .line 227
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 228
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ejml/equation/Variable;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/ejml/equation/Variable;

    invoke-static {v0, p0, p1}, Lorg/ejml/equation/Operation;->randn(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;

    move-result-object p0

    return-object p0

    .line 227
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Two inputs expected"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$addBuiltIn$8(Ljava/util/List;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 2

    .line 232
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 233
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ejml/equation/Variable;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/ejml/equation/Variable;

    invoke-static {v0, p0, p1}, Lorg/ejml/equation/Operation;->kron(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;

    move-result-object p0

    return-object p0

    .line 232
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Two inputs expected"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$addBuiltIn$9(Ljava/util/List;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 2

    .line 237
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 238
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ejml/equation/Variable;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/ejml/equation/Variable;

    invoke-static {v0, p0, p1}, Lorg/ejml/equation/Operation;->dot(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;

    move-result-object p0

    return-object p0

    .line 237
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Two inputs expected"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public add1(Ljava/lang/String;Lorg/ejml/equation/ManagerFunctions$Input1;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->input1:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addN(Ljava/lang/String;Lorg/ejml/equation/ManagerFunctions$InputN;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->inputN:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public create(CLorg/ejml/equation/Variable;)Lorg/ejml/equation/Operation$Info;
    .locals 2

    const/16 v0, 0x27

    if-ne p1, v0, :cond_0

    .line 94
    iget-object p1, p0, Lorg/ejml/equation/ManagerFunctions;->managerTemp:Lorg/ejml/equation/ManagerTempVariables;

    invoke-static {p2, p1}, Lorg/ejml/equation/Operation;->transpose(Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;

    move-result-object p1

    return-object p1

    .line 97
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown operation "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public create(Ljava/lang/String;Ljava/util/List;)Lorg/ejml/equation/Operation$Info;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/ejml/equation/Variable;",
            ">;)",
            "Lorg/ejml/equation/Operation$Info;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->inputN:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ejml/equation/ManagerFunctions$InputN;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->managerTemp:Lorg/ejml/equation/ManagerTempVariables;

    invoke-interface {p1, p2, v0}, Lorg/ejml/equation/ManagerFunctions$InputN;->create(Ljava/util/List;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;

    move-result-object p1

    return-object p1
.end method

.method public create(Ljava/lang/String;Lorg/ejml/equation/Variable;)Lorg/ejml/equation/Operation$Info;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->input1:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ejml/equation/ManagerFunctions$Input1;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 67
    :cond_0
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->managerTemp:Lorg/ejml/equation/ManagerTempVariables;

    invoke-interface {p1, p2, v0}, Lorg/ejml/equation/ManagerFunctions$Input1;->create(Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;

    move-result-object p1

    return-object p1
.end method

.method public create(Lorg/ejml/equation/Symbol;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;)Lorg/ejml/equation/Operation$Info;
    .locals 2

    .line 110
    sget-object v0, Lorg/ejml/equation/ManagerFunctions$1;->$SwitchMap$org$ejml$equation$Symbol:[I

    invoke-virtual {p1}, Lorg/ejml/equation/Symbol;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 139
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unknown operation "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 136
    :pswitch_0
    iget-object p1, p0, Lorg/ejml/equation/ManagerFunctions;->managerTemp:Lorg/ejml/equation/ManagerTempVariables;

    invoke-static {p2, p3, p1}, Lorg/ejml/equation/Operation;->elementPow(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;

    move-result-object p1

    return-object p1

    .line 133
    :pswitch_1
    iget-object p1, p0, Lorg/ejml/equation/ManagerFunctions;->managerTemp:Lorg/ejml/equation/ManagerTempVariables;

    invoke-static {p2, p3, p1}, Lorg/ejml/equation/Operation;->elementMult(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;

    move-result-object p1

    return-object p1

    .line 130
    :pswitch_2
    iget-object p1, p0, Lorg/ejml/equation/ManagerFunctions;->managerTemp:Lorg/ejml/equation/ManagerTempVariables;

    invoke-static {p2, p3, p1}, Lorg/ejml/equation/Operation;->elementDivision(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;

    move-result-object p1

    return-object p1

    .line 127
    :pswitch_3
    iget-object p1, p0, Lorg/ejml/equation/ManagerFunctions;->managerTemp:Lorg/ejml/equation/ManagerTempVariables;

    invoke-static {p2, p3, p1}, Lorg/ejml/equation/Operation;->pow(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;

    move-result-object p1

    return-object p1

    .line 124
    :pswitch_4
    iget-object p1, p0, Lorg/ejml/equation/ManagerFunctions;->managerTemp:Lorg/ejml/equation/ManagerTempVariables;

    invoke-static {p3, p2, p1}, Lorg/ejml/equation/Operation;->divide(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;

    move-result-object p1

    return-object p1

    .line 121
    :pswitch_5
    iget-object p1, p0, Lorg/ejml/equation/ManagerFunctions;->managerTemp:Lorg/ejml/equation/ManagerTempVariables;

    invoke-static {p2, p3, p1}, Lorg/ejml/equation/Operation;->divide(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;

    move-result-object p1

    return-object p1

    .line 118
    :pswitch_6
    iget-object p1, p0, Lorg/ejml/equation/ManagerFunctions;->managerTemp:Lorg/ejml/equation/ManagerTempVariables;

    invoke-static {p2, p3, p1}, Lorg/ejml/equation/Operation;->multiply(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;

    move-result-object p1

    return-object p1

    .line 115
    :pswitch_7
    iget-object p1, p0, Lorg/ejml/equation/ManagerFunctions;->managerTemp:Lorg/ejml/equation/ManagerTempVariables;

    invoke-static {p2, p3, p1}, Lorg/ejml/equation/Operation;->subtract(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;

    move-result-object p1

    return-object p1

    .line 112
    :pswitch_8
    iget-object p1, p0, Lorg/ejml/equation/ManagerFunctions;->managerTemp:Lorg/ejml/equation/ManagerTempVariables;

    invoke-static {p2, p3, p1}, Lorg/ejml/equation/Operation;->add(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getManagerTemp()Lorg/ejml/equation/ManagerTempVariables;
    .locals 1

    .line 264
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->managerTemp:Lorg/ejml/equation/ManagerTempVariables;

    return-object v0
.end method

.method public isFunctionName(Ljava/lang/String;)Z
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->input1:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 53
    :cond_0
    iget-object v0, p0, Lorg/ejml/equation/ManagerFunctions;->inputN:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setManagerTemp(Lorg/ejml/equation/ManagerTempVariables;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lorg/ejml/equation/ManagerFunctions;->managerTemp:Lorg/ejml/equation/ManagerTempVariables;

    return-void
.end method
