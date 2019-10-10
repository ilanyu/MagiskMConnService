.class public Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "URL"
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String; = "/mic/status/v2"

.field private static final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 208
    sget-boolean v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;->a:Z

    if-eqz v0, :cond_7

    const-string v0, "http://statusapi.micloud.preview.n.xiaomi.net"

    goto :goto_9

    :cond_7
    const-string v0, "http://statusapi.micloud.xiaomi.net"

    :goto_9
    sput-object v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->f:Ljava/lang/String;

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/mic/status/v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->h:Ljava/lang/String;

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/user/overview"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->a:Ljava/lang/String;

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/user/level"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->b:Ljava/lang/String;

    .line 222
    sget-boolean v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;->a:Z

    if-eqz v0, :cond_51

    const-string v0, "http://micloud.preview.n.xiaomi.net"

    goto :goto_53

    :cond_51
    const-string v0, "http://galleryapi.micloud.xiaomi.net"

    :goto_53
    sput-object v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->c:Ljava/lang/String;

    .line 225
    sget-boolean v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;->a:Z

    if-eqz v0, :cond_5c

    const-string v0, "http://api.micloud.preview.n.xiaomi.net"

    goto :goto_5e

    :cond_5c
    const-string v0, "http://fileapi.micloud.xiaomi.net"

    :goto_5e
    sput-object v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->d:Ljava/lang/String;

    .line 228
    sget-boolean v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;->a:Z

    if-eqz v0, :cond_67

    const-string v0, "http://relocationapi.micloud.preview.n.xiaomi.net"

    goto :goto_69

    :cond_67
    const-string v0, "http://relocationapi.micloud.xiaomi.net"

    :goto_69
    sput-object v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
