.class public Lcom/xiaomi/micloudsdk/utils/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field private static final b:Ljava/lang/String; = "MiCloudSdkBuild"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 11
    invoke-static {}, Lcom/xiaomi/micloudsdk/utils/k;->a()I

    move-result v0

    sput v0, Lcom/xiaomi/micloudsdk/utils/k;->a:I

    const-string v0, "MiCloudSdkBuild"

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MiCloudSdk version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/xiaomi/micloudsdk/utils/k;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()I
    .registers 2

    const-string v0, "com.xiaomi.micloudsdk.os.MiCloudSdkVersion"

    .line 17
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/utils/p;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v1, "version"

    .line 20
    invoke-static {v0, v1}, Lcom/xiaomi/micloudsdk/utils/p;->a(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_f
    const-string v0, "miui.cloud.helper.BroadcastIntentHelper"

    .line 23
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/utils/p;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1a

    const/16 v0, 0x19

    return v0

    :cond_1a
    const-string v0, "com.xiaomi.micloudsdk.utils.MiCloudRuntimeConstants"

    .line 29
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/utils/p;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_25

    const/16 v0, 0x12

    return v0

    .line 35
    :cond_25
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No MiCloudSDK runtime!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
