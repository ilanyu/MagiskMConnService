.class public Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams$Builder;
    .registers 2

    .line 11
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;
    .registers 6

    .line 30
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams$Builder;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams$Builder;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams$Builder;->c:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams$Builder;
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams$Builder;
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams$Builder;->c:Ljava/lang/String;

    return-object p0
.end method
