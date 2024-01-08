.class public final Lcom/android/billingclient/api/zzg;
.super Landroid/content/BroadcastReceiver;
.source "com.android.billingclient:billing@@6.0.1"


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/zzh;

.field public final zzb:Lcom/android/billingclient/api/PurchasesUpdatedListener;

.field public final zzc:Lcom/android/billingclient/api/zzaz;

.field public final zzd:Lcom/android/billingclient/api/AlternativeBillingListener;

.field public final zze:Lcom/android/billingclient/api/zzar;

.field public zzf:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/zzh;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/AlternativeBillingListener;Lcom/android/billingclient/api/zzar;Lcom/android/billingclient/api/zzf;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/billingclient/api/zzg;->zza:Lcom/android/billingclient/api/zzh;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/android/billingclient/api/zzg;->zzb:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    iput-object p4, p0, Lcom/android/billingclient/api/zzg;->zze:Lcom/android/billingclient/api/zzar;

    iput-object p3, p0, Lcom/android/billingclient/api/zzg;->zzd:Lcom/android/billingclient/api/AlternativeBillingListener;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/billingclient/api/zzg;->zzc:Lcom/android/billingclient/api/zzaz;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/billingclient/api/zzh;Lcom/android/billingclient/api/zzaz;Lcom/android/billingclient/api/zzar;Lcom/android/billingclient/api/zzf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/zzg;->zza:Lcom/android/billingclient/api/zzh;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/billingclient/api/zzg;->zzb:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    iput-object p1, p0, Lcom/android/billingclient/api/zzg;->zzd:Lcom/android/billingclient/api/AlternativeBillingListener;

    iput-object p1, p0, Lcom/android/billingclient/api/zzg;->zzc:Lcom/android/billingclient/api/zzaz;

    iput-object p3, p0, Lcom/android/billingclient/api/zzg;->zze:Lcom/android/billingclient/api/zzar;

    return-void
.end method

.method public static synthetic equals$006(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual/range {p0 .. p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic equals$007(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual/range {p0 .. p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic equals$012(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual/range {p0 .. p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic getAction$004(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getExtras$001(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getResponseCode$008(Lcom/android/billingclient/api/BillingResult;)I
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public static synthetic getResponseCode$013(Lcom/android/billingclient/api/BillingResult;)I
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public static synthetic getString$005(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual/range {p0 .. p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getString$018(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual/range {p0 .. p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic onPurchasesUpdated$003(Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1

    invoke-interface/range {p0 .. p2}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic onPurchasesUpdated$011(Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1

    invoke-interface/range {p0 .. p2}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic onPurchasesUpdated$015(Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1

    invoke-interface/range {p0 .. p2}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic onPurchasesUpdated$017(Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1

    invoke-interface/range {p0 .. p2}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic onPurchasesUpdated$020(Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1

    invoke-interface/range {p0 .. p2}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic onPurchasesUpdated$024(Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1

    invoke-interface/range {p0 .. p2}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic userSelectedAlternativeBilling$022(Lcom/android/billingclient/api/AlternativeBillingListener;Lcom/android/billingclient/api/AlternativeChoiceDetails;)V
    .locals 1

    invoke-interface/range {p0 .. p1}, Lcom/android/billingclient/api/AlternativeBillingListener;->userSelectedAlternativeBilling(Lcom/android/billingclient/api/AlternativeChoiceDetails;)V

    return-void
.end method

.method public static bridge synthetic zza(Lcom/android/billingclient/api/zzg;)Lcom/android/billingclient/api/zzaz;
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/zzg;->zzc:Lcom/android/billingclient/api/zzaz;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic zza$002(Lcom/android/billingclient/api/zzar;Lcom/google/android/gms/internal/play_billing/zzfb;)V
    .locals 1

    invoke-interface/range {p0 .. p1}, Lcom/android/billingclient/api/zzar;->zza(Lcom/google/android/gms/internal/play_billing/zzfb;)V

    return-void
.end method

.method public static synthetic zza$016(Lcom/android/billingclient/api/zzar;Lcom/google/android/gms/internal/play_billing/zzfb;)V
    .locals 1

    invoke-interface/range {p0 .. p1}, Lcom/android/billingclient/api/zzar;->zza(Lcom/google/android/gms/internal/play_billing/zzfb;)V

    return-void
.end method

.method public static synthetic zza$019(Lcom/android/billingclient/api/zzar;Lcom/google/android/gms/internal/play_billing/zzfb;)V
    .locals 1

    invoke-interface/range {p0 .. p1}, Lcom/android/billingclient/api/zzar;->zza(Lcom/google/android/gms/internal/play_billing/zzfb;)V

    return-void
.end method

.method public static synthetic zza$023(Lcom/android/billingclient/api/zzar;Lcom/google/android/gms/internal/play_billing/zzfb;)V
    .locals 1

    invoke-interface/range {p0 .. p1}, Lcom/android/billingclient/api/zzar;->zza(Lcom/google/android/gms/internal/play_billing/zzfb;)V

    return-void
.end method

.method public static bridge synthetic zzb(Lcom/android/billingclient/api/zzg;)Lcom/android/billingclient/api/PurchasesUpdatedListener;
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/zzg;->zzb:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    return-object p0
.end method

.method public static synthetic zzb$009(Lcom/android/billingclient/api/zzar;Lcom/google/android/gms/internal/play_billing/zzff;)V
    .locals 1

    invoke-interface/range {p0 .. p1}, Lcom/android/billingclient/api/zzar;->zzb(Lcom/google/android/gms/internal/play_billing/zzff;)V

    return-void
.end method

.method public static synthetic zzb$021(Lcom/android/billingclient/api/zzar;Lcom/google/android/gms/internal/play_billing/zzff;)V
    .locals 1

    invoke-interface/range {p0 .. p1}, Lcom/android/billingclient/api/zzar;->zzb(Lcom/google/android/gms/internal/play_billing/zzff;)V

    return-void
.end method

.method private final zze(Landroid/os/Bundle;Lcom/android/billingclient/api/BillingResult;I)V
    .locals 2

    const-string v0, "FAILURE_LOGGING_PAYLOAD"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object p2, p0, Lcom/android/billingclient/api/zzg;->zze:Lcom/android/billingclient/api/zzar;

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbn;->zza()Lcom/google/android/gms/internal/play_billing/zzbn;

    move-result-object p3

    .line 4
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzfb;->zzx([BLcom/google/android/gms/internal/play_billing/zzbn;)Lcom/google/android/gms/internal/play_billing/zzfb;

    move-result-object p1

    .line 5
    invoke-interface {p2, p1}, Lcom/android/billingclient/api/zzar;->zza(Lcom/google/android/gms/internal/play_billing/zzfb;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const-string p1, "BillingBroadcastManager"

    const-string p2, "Failed parsing Api failure."

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/billingclient/api/zzg;->zze:Lcom/android/billingclient/api/zzar;

    const/16 v0, 0x17

    .line 7
    invoke-static {v0, p3, p2}, Lcom/android/billingclient/api/zzaq;->zza(IILcom/android/billingclient/api/BillingResult;)Lcom/google/android/gms/internal/play_billing/zzfb;

    move-result-object p2

    .line 8
    invoke-interface {p1, p2}, Lcom/android/billingclient/api/zzar;->zza(Lcom/google/android/gms/internal/play_billing/zzfb;)V

    return-void
.end method

.method public static synthetic zze$010(Lcom/android/billingclient/api/zzg;Landroid/os/Bundle;Lcom/android/billingclient/api/BillingResult;I)V
    .locals 1

    invoke-direct/range {p0 .. p3}, Lcom/android/billingclient/api/zzg;->zze(Landroid/os/Bundle;Lcom/android/billingclient/api/BillingResult;I)V

    return-void
.end method

.method public static synthetic zze$014(Lcom/android/billingclient/api/zzg;Landroid/os/Bundle;Lcom/android/billingclient/api/BillingResult;I)V
    .locals 1

    invoke-direct/range {p0 .. p3}, Lcom/android/billingclient/api/zzg;->zze(Landroid/os/Bundle;Lcom/android/billingclient/api/BillingResult;I)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const-class v1, Lcom/android/billingclient/api/zzg;

    const v4, 0x3

    new-array v2, v4, [Ljava/lang/Object;

    const v4, 0x0

    aput-object p0, v2, v4

    const v4, 0x1

    aput-object p1, v2, v4

    const v4, 0x2

    aput-object p2, v2, v4

    const v4, 0x2

    new-array v3, v4, [Ljava/lang/Object;

    const v4, 0x0

    aput-object v1, v3, v4

    const v4, 0x1

    aput-object v2, v3, v4

    const-string/jumbo v0, "Bg0vpMdEbD1u5wmM"

    invoke-static {v0, v3}, Lcom/pairip/VMRunner;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-void
.end method

.method public final zzc(Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/billingclient/api/zzg;->zzf:Z

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/billingclient/api/zzg;->zza:Lcom/android/billingclient/api/zzh;

    invoke-static {v0}, Lcom/android/billingclient/api/zzh;->zza(Lcom/android/billingclient/api/zzh;)Lcom/android/billingclient/api/zzg;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, p2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/zzg;->zza:Lcom/android/billingclient/api/zzh;

    invoke-static {v0}, Lcom/android/billingclient/api/zzh;->zza(Lcom/android/billingclient/api/zzh;)Lcom/android/billingclient/api/zzg;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/zzg;->zzf:Z

    :cond_1
    return-void
.end method

.method public final zzd(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/billingclient/api/zzg;->zzf:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/billingclient/api/zzg;->zza:Lcom/android/billingclient/api/zzh;

    invoke-static {v0}, Lcom/android/billingclient/api/zzh;->zza(Lcom/android/billingclient/api/zzh;)Lcom/android/billingclient/api/zzg;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/billingclient/api/zzg;->zzf:Z

    return-void

    :cond_0
    const-string p1, "BillingBroadcastManager"

    const-string v0, "Receiver is not registered."

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
