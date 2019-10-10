.class public Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/xiaomi/accountsdk/account/data/k;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Lcom/xiaomi/accountsdk/account/data/j;


# direct methods
.method public constructor <init>(Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;)V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;->a(Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;->a:Ljava/lang/String;

    .line 16
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;->b(Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;)Lcom/xiaomi/accountsdk/account/data/k;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;->b:Lcom/xiaomi/accountsdk/account/data/k;

    .line 17
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;->c(Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;->c:Ljava/lang/String;

    .line 18
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;->d(Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;->d:Ljava/lang/String;

    .line 19
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;->e(Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;->e:Ljava/lang/String;

    .line 20
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;->f(Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;->f:Ljava/lang/String;

    .line 21
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;->g(Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;->g:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;->h(Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;)Lcom/xiaomi/accountsdk/account/data/j;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;->h:Lcom/xiaomi/accountsdk/account/data/j;

    return-void
.end method

.method public static a(Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;)Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 29
    :cond_4
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;->b:Lcom/xiaomi/accountsdk/account/data/k;

    .line 30
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;->a(Lcom/xiaomi/accountsdk/account/data/k;)Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;->c:Ljava/lang/String;

    .line 31
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;->d:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;->e:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;->e(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;->f:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;->c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;->g:Ljava/lang/String;

    .line 35
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;->d(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams;->h:Lcom/xiaomi/accountsdk/account/data/j;

    .line 36
    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;->a(Lcom/xiaomi/accountsdk/account/data/j;)Lcom/xiaomi/accountsdk/account/data/SetPasswordParams$Builder;

    move-result-object p0

    return-object p0
.end method
