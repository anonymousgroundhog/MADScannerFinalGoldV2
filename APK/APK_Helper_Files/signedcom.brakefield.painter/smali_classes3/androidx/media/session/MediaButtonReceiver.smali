.class public Landroidx/media/session/MediaButtonReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaButtonReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaButtonReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic append$009(Ljava/lang/StringBuilder;Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 1

    invoke-virtual/range {p0 .. p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static buildMediaButtonPendingIntent(Landroid/content/Context;J)Landroid/app/PendingIntent;
    .locals 1

    .line 224
    invoke-static {p0}, Landroidx/media/session/MediaButtonReceiver;->getMediaButtonReceiverComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "MediaButtonReceiver"

    const-string p1, "A unique media button receiver could not be found in the given context, so couldn\'t build a pending intent."

    .line 226
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 230
    :cond_0
    invoke-static {p0, v0, p1, p2}, Landroidx/media/session/MediaButtonReceiver;->buildMediaButtonPendingIntent(Landroid/content/Context;Landroid/content/ComponentName;J)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static buildMediaButtonPendingIntent(Landroid/content/Context;Landroid/content/ComponentName;J)Landroid/app/PendingIntent;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "MediaButtonReceiver"

    if-nez p1, :cond_0

    const/4 p0, 0x0

    sget-object p0, Lkotlin/sequences/xWeI/kyamZJaSaxi;->rkyiyAUqzQHGP:Ljava/lang/String;

    .line 258
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 261
    :cond_0
    invoke-static {p2, p3}, Landroid/support/v4/media/session/PlaybackStateCompat;->toKeyCode(J)I

    move-result v2

    if-nez v2, :cond_1

    .line 263
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Cannot build a media button pending intent with the given action: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 267
    :cond_1
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 269
    new-instance p1, Landroid/view/KeyEvent;

    const/4 p3, 0x0

    invoke-direct {p1, p3, v2}, Landroid/view/KeyEvent;-><init>(II)V

    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 271
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 274
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p1, v0, :cond_2

    const/high16 p3, 0x2000000

    .line 273
    :cond_2
    invoke-static {p0, v2, p2, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic connect$008(Landroid/support/v4/media/MediaBrowserCompat;)V
    .locals 1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/media/MediaBrowserCompat;->connect()V

    return-void
.end method

.method public static synthetic equals$002(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual/range {p0 .. p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic getAction$001(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getApplicationContext$006(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getMediaButtonReceiverComponent(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 3

    .line 282
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    .line 285
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 286
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 287
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 288
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 290
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v2, :cond_1

    const-string p0, "MediaButtonReceiver"

    const-string v0, "More than one BroadcastReceiver that handles android.intent.action.MEDIA_BUTTON was found, returning null."

    .line 291
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getServiceComponentByAction(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 3

    .line 299
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 300
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p0, 0x0

    .line 302
    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 303
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 304
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 305
    new-instance p1, Landroid/content/ComponentName;

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p1, v0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 307
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 310
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected 1 service that handles "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", found "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 311
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic goAsync$005(Landroidx/media/session/MediaButtonReceiver;)Landroid/content/BroadcastReceiver$PendingResult;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Landroidx/media/session/MediaButtonReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public static handleIntent(Landroid/support/v4/media/session/MediaSessionCompat;Landroid/content/Intent;)Landroid/view/KeyEvent;
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    .line 191
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.intent.extra.KEY_EVENT"

    .line 192
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/view/KeyEvent;

    .line 196
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaSessionCompat;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object p0

    .line 197
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/MediaControllerCompat;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic hasExtra$003(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual/range {p0 .. p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic setComponent$004(Landroid/content/Intent;Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1

    invoke-virtual/range {p0 .. p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic setMediaBrowser$007(Landroidx/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;Landroid/support/v4/media/MediaBrowserCompat;)V
    .locals 1

    invoke-virtual/range {p0 .. p1}, Landroidx/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->setMediaBrowser(Landroid/support/v4/media/MediaBrowserCompat;)V

    return-void
.end method

.method public static synthetic toString$010(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const v0, 0x0

    aput-object p0, v2, v0

    const v0, 0x1

    aput-object p1, v2, v0

    const v0, 0x2

    aput-object p2, v2, v0

    const-string/jumbo v1, "c9RAIj0YNRFLHT4C"

    invoke-static {v1, v2}, Lcom/pairip/VMRunner;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-void
.end method
