.class public final synthetic Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;

.field public final synthetic f$1:Ljava/util/Calendar;

.field public final synthetic f$2:Lcom/brakefield/infinitestudio/ui/components/OnChange;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;Ljava/util/Calendar;Lcom/brakefield/infinitestudio/ui/components/OnChange;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch$$ExternalSyntheticLambda0;->f$1:Ljava/util/Calendar;

    iput-object p3, p0, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch$$ExternalSyntheticLambda0;->f$2:Lcom/brakefield/infinitestudio/ui/components/OnChange;

    return-void
.end method


# virtual methods
.method public final onDateSet(Landroid/widget/DatePicker;III)V
    .locals 7

    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch$$ExternalSyntheticLambda0;->f$1:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch$$ExternalSyntheticLambda0;->f$2:Lcom/brakefield/infinitestudio/ui/components/OnChange;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;->lambda$verifyAge$1$com-brakefield-infinitestudio-apis-pixabay-SafeSearch(Ljava/util/Calendar;Lcom/brakefield/infinitestudio/ui/components/OnChange;Landroid/widget/DatePicker;III)V

    return-void
.end method
