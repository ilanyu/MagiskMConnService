.class public Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$SYNC;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SYNC"
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "micloud_ignore_temperature"

.field public static final b:Ljava/lang/String; = "micloud_ignore_wifi_settings"

.field public static final c:Ljava/lang/String; = "micloud_ignore_battery_low"

.field public static final d:Ljava/lang/String; = "xiaomi_request"

.field public static final e:Ljava/lang/String; = "push"

.field public static final f:Ljava/lang/String; = "intelligent"

.field public static final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 178
    invoke-static {}, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$SYNC;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$SYNC;->g:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/String;
    .registers 3

    const-string v0, "micloud_force"

    :try_start_2
    const-string v1, "android.content.MiSyncPolicyResolver"

    .line 183
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "SYNC_EXTRAS_MICLOUD_FORCE"

    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_15} :catch_18
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_15} :catch_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_15} :catch_16

    return-object v1

    :catch_16
    return-object v0

    :catch_17
    return-object v0

    :catch_18
    return-object v0
.end method
