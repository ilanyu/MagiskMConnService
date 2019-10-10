.class public Lcom/xiaomi/micloudsdk/sync/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "com.miui.cloudservice.StatProvider"

.field public static final b:Ljava/lang/String; = "open_sync_result"

.field public static final c:Ljava/lang/String; = "open_sync_phone_state"

.field public static final d:Ljava/lang/String; = "open_sync_time_consume"

.field public static final e:Landroid/net/Uri;

.field public static final f:Landroid/net/Uri;

.field public static final g:Landroid/net/Uri;

.field public static final h:Ljava/lang/String; = "stat_key_sync_reason"

.field public static final i:Ljava/lang/String; = "stat_key_sync_authority"

.field public static final j:Ljava/lang/String; = "stat_key_sync_successful"

.field public static final k:Ljava/lang/String; = "stat_key_sync_time_consume"

.field public static final l:Ljava/lang/String; = "stat_key_sync_start"

.field public static final m:Ljava/lang/String; = "stat_key_sync_time_start_in_millis"

.field public static final n:Ljava/lang/String; = "stat_key_sync_time_end_in_millis"

.field public static final o:Ljava/lang/String; = "stat_key_unsynced_count_after_sync"

.field public static final p:Ljava/lang/String; = "stat_key_unsynced_count_before_sync"

.field public static final q:Ljava/lang/String; = "stat_key_sync_retry"

.field public static final r:Ljava/lang/String; = "micloud_ignore_temperature"

.field public static final s:Ljava/lang/String; = "micloud_ignore_wifi_settings"

.field public static final t:Ljava/lang/String; = "micloud_ignore_battery_low"

.field public static final u:Ljava/lang/String; = "micloud_force"

.field public static final v:Ljava/lang/String; = "default_error"

.field public static final w:Ljava/lang/String; = "no_error"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.miui.cloudservice.StatProvider/open_sync_result"

    .line 11
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/micloudsdk/sync/d;->e:Landroid/net/Uri;

    const-string v0, "content://com.miui.cloudservice.StatProvider/open_sync_phone_state"

    .line 13
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/micloudsdk/sync/d;->f:Landroid/net/Uri;

    const-string v0, "content://com.miui.cloudservice.StatProvider/open_sync_time_consume"

    .line 15
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/micloudsdk/sync/d;->g:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
