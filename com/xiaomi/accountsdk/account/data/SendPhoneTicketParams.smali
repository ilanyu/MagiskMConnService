.class public Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;)V
    .registers 4

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->a(Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->a:Ljava/lang/String;

    .line 21
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->b(Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->d:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    .line 22
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->d:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->d:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->b:Ljava/lang/String;

    goto :goto_1a

    :cond_19
    move-object v0, v1

    :goto_1a
    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->b:Ljava/lang/String;

    .line 23
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->d:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->d:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iget-object v1, v0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->c:Ljava/lang/String;

    :cond_24
    iput-object v1, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->c:Ljava/lang/String;

    .line 24
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->c(Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->e:Ljava/lang/String;

    .line 25
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->d(Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->f:Ljava/lang/String;

    .line 26
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->e(Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->g:Ljava/lang/String;

    .line 27
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->f(Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->h:Ljava/lang/String;

    .line 28
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->g(Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->i:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$1;)V
    .registers 3

    .line 8
    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;-><init>(Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;)V

    return-void
.end method

.method public static a(Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;)Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 35
    :cond_4
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->a:Ljava/lang/String;

    .line 36
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->d:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    .line 37
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->a(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->f:Ljava/lang/String;

    .line 38
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->e:Ljava/lang/String;

    .line 39
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->h:Ljava/lang/String;

    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->i:Ljava/lang/String;

    .line 41
    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;

    move-result-object p0

    return-object p0
.end method
