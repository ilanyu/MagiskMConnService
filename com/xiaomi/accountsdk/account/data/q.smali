.class public Lcom/xiaomi/accountsdk/account/data/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/xiaomi/accountsdk/account/data/f;

.field private d:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/xiaomi/accountsdk/account/data/q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Lcom/xiaomi/accountsdk/account/data/f;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;)V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/q;->a:Ljava/lang/String;

    if-eqz p2, :cond_13

    .line 22
    iget-object p1, p2, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/q;->b:Ljava/lang/String;

    .line 23
    iget-object p1, p2, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->i:Lcom/xiaomi/accountsdk/account/data/f;

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/q;->c:Lcom/xiaomi/accountsdk/account/data/f;

    .line 24
    iget-object p1, p2, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->j:Ljava/util/Calendar;

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/q;->d:Ljava/util/Calendar;

    :cond_13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Lcom/xiaomi/accountsdk/account/data/f;)V
    .registers 5

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/q;->a:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/q;->b:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/xiaomi/accountsdk/account/data/q;->c:Lcom/xiaomi/accountsdk/account/data/f;

    .line 32
    iput-object p3, p0, Lcom/xiaomi/accountsdk/account/data/q;->d:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/q;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/xiaomi/accountsdk/account/data/f;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/q;->c:Lcom/xiaomi/accountsdk/account/data/f;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/q;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Calendar;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/q;->d:Ljava/util/Calendar;

    return-void
.end method

.method public b()Lcom/xiaomi/accountsdk/account/data/f;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/q;->c:Lcom/xiaomi/accountsdk/account/data/f;

    return-object v0
.end method

.method public c()Ljava/util/Calendar;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/q;->d:Ljava/util/Calendar;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/q;->b:Ljava/lang/String;

    return-object v0
.end method
