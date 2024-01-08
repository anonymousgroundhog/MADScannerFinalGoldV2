.class synthetic Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter$1;
.super Ljava/lang/Object;
.source "SectionedRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$brakefield$infinitestudio$ui$sectionedrecyclerviewadapter$Section$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 378
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;->values()[Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter$1;->$SwitchMap$com$brakefield$infinitestudio$ui$sectionedrecyclerviewadapter$Section$State:[I

    :try_start_0
    sget-object v1, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;->LOADING:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter$1;->$SwitchMap$com$brakefield$infinitestudio$ui$sectionedrecyclerviewadapter$Section$State:[I

    sget-object v1, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;->LOADED:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter$1;->$SwitchMap$com$brakefield$infinitestudio$ui$sectionedrecyclerviewadapter$Section$State:[I

    sget-object v1, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;->FAILED:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter$1;->$SwitchMap$com$brakefield$infinitestudio$ui$sectionedrecyclerviewadapter$Section$State:[I

    sget-object v1, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;->EMPTY:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
