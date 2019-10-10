.class public Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;,
        Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$SYNC_LOG;,
        Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$SYNC;,
        Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$REQUEST;,
        Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$PDC;,
        Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$RICHMEDIA;,
        Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$ANALYTICS;
    }
.end annotation


# static fields
.field public static final a:Z

.field public static final b:Z

.field public static final c:I = -0x1

.field public static final d:I = 0x400

.field public static final e:Ljava/lang/String; = "Micloud"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 11
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/xiaomi_account_preview"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;->a:Z

    .line 12
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/micloud_member_daily"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;->b:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
