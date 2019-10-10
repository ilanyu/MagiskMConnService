.class public Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$SYNC_LOG;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SYNC_LOG"
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "com.miui.cloudservice.sync.SyncLogProvider"

.field public static final b:Landroid/net/Uri;

.field public static final c:Ljava/lang/String; = "sync_log_key_authority"

.field public static final d:Ljava/lang/String; = "sync_log_key_remote_logger"

.field public static final e:Ljava/lang/String; = "OPEN_SYNC_LOG"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.miui.cloudservice.sync.SyncLogProvider"

    .line 199
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$SYNC_LOG;->b:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
