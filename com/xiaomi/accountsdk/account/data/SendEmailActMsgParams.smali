.class public Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;
    }
.end annotation


# instance fields
.field public final a:Lcom/xiaomi/accountsdk/account/data/k;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;)V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;->a(Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;)Lcom/xiaomi/accountsdk/account/data/k;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams;->a:Lcom/xiaomi/accountsdk/account/data/k;

    .line 14
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;->b(Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams;->b:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;->c(Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams;->c:Ljava/lang/String;

    .line 16
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;->d(Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams;->d:Ljava/lang/String;

    .line 17
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;->e(Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams;->e:Ljava/lang/String;

    .line 18
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;->f(Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams;->f:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$1;)V
    .registers 3

    .line 4
    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams;-><init>(Lcom/xiaomi/accountsdk/account/data/SendEmailActMsgParams$Builder;)V

    return-void
.end method
