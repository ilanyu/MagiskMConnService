.class Lcom/xiaomi/micloudsdk/sync/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    sget-object v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$SYNC_LOG;->b:Landroid/net/Uri;

    sput-object v0, Lcom/xiaomi/micloudsdk/sync/h;->a:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/sync/g;
    .registers 4

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/micloudsdk/sync/h;->a:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    if-nez p0, :cond_19

    const-string p0, "SyncLogSender"

    const-string p1, "Create sync log sender: logcat."

    .line 18
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    new-instance p0, Lcom/xiaomi/micloudsdk/sync/b;

    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/sync/b;-><init>()V

    return-object p0

    :cond_19
    const-string v0, "SyncLogSender"

    const-string v1, "Create sync log sender: file."

    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance v0, Lcom/xiaomi/micloudsdk/sync/a;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/micloudsdk/sync/a;-><init>(Landroid/content/ContentProviderClient;Ljava/lang/String;)V

    return-object v0
.end method
