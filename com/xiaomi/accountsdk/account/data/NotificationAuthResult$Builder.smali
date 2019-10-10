.class public Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult$Builder;
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;
    .registers 8

    .line 35
    new-instance v6, Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult$Builder;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult$Builder;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult$Builder;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult$Builder;->d:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult$1;)V

    return-object v6
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult$Builder;
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult$Builder;
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult$Builder;
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult$Builder;->d:Ljava/lang/String;

    return-object p0
.end method
