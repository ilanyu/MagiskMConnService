.class public final Lcom/xiaomi/accountsdk/service/DeviceInfoResult$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/service/DeviceInfoResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final a:Landroid/os/Bundle;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 3

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    sget-object v0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;->b:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$Builder;->d:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    .line 79
    iput-object p1, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$Builder;->a:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/accountsdk/service/DeviceInfoResult$Builder;)Landroid/os/Bundle;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$Builder;->a:Landroid/os/Bundle;

    return-object p0
.end method

.method public static a(Lcom/xiaomi/accountsdk/service/DeviceInfoResult;)Lcom/xiaomi/accountsdk/service/DeviceInfoResult$Builder;
    .registers 3

    .line 99
    new-instance v0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$Builder;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->e:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$Builder;-><init>(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->f:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    .line 100
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$Builder;->a(Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;)Lcom/xiaomi/accountsdk/service/DeviceInfoResult$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->g:Ljava/lang/String;

    .line 101
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$Builder;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/service/DeviceInfoResult$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;->h:Ljava/lang/String;

    .line 102
    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$Builder;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/service/DeviceInfoResult$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/xiaomi/accountsdk/service/DeviceInfoResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaomi/accountsdk/service/DeviceInfoResult$Builder;)Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$Builder;->d:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaomi/accountsdk/service/DeviceInfoResult$Builder;)Ljava/lang/String;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$Builder;->c:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;)Lcom/xiaomi/accountsdk/service/DeviceInfoResult$Builder;
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$Builder;->d:Lcom/xiaomi/accountsdk/service/DeviceInfoResult$ErrorCode;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/service/DeviceInfoResult$Builder;
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/xiaomi/accountsdk/service/DeviceInfoResult;
    .registers 3

    .line 106
    new-instance v0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/accountsdk/service/DeviceInfoResult;-><init>(Lcom/xiaomi/accountsdk/service/DeviceInfoResult$Builder;Lcom/xiaomi/accountsdk/service/DeviceInfoResult$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/service/DeviceInfoResult$Builder;
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/xiaomi/accountsdk/service/DeviceInfoResult$Builder;->c:Ljava/lang/String;

    return-object p0
.end method
