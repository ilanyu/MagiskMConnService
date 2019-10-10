.class Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadFileInfo"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field final synthetic e:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;


# direct methods
.method private constructor <init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;)V
    .registers 2

    .line 233
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;->e:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$1;)V
    .registers 3

    .line 233
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$DownloadFileInfo;-><init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;)V

    return-void
.end method
