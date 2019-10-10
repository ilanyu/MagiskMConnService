.class public Lcom/xiaomi/accountsdk/account/data/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/d;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/d;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/d;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/d;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/d;->c:Ljava/lang/String;

    return-object v0
.end method
