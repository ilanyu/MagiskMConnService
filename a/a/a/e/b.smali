.class public La/a/a/e/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I

.field private static final b:La/a/a/e/c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 10
    sget v0, Lcom/xiaomi/micloudsdk/utils/k;->a:I

    sput v0, La/a/a/e/b;->a:I

    .line 14
    sget v0, La/a/a/e/b;->a:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_12

    .line 15
    new-instance v0, La/a/a/e/e;

    invoke-direct {v0}, La/a/a/e/e;-><init>()V

    sput-object v0, La/a/a/e/b;->b:La/a/a/e/c;

    goto :goto_19

    .line 17
    :cond_12
    new-instance v0, La/a/a/e/d;

    invoke-direct {v0}, La/a/a/e/d;-><init>()V

    sput-object v0, La/a/a/e/b;->b:La/a/a/e/c;

    :goto_19
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/IBinder;Landroid/accounts/Account;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    sget-object v0, La/a/a/e/b;->b:La/a/a/e/c;

    invoke-interface {v0, p0, p1}, La/a/a/e/c;->a(Landroid/os/IBinder;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/os/IBinder;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    sget-object v0, La/a/a/e/b;->b:La/a/a/e/c;

    invoke-interface {v0, p0, p1}, La/a/a/e/c;->a(Landroid/os/IBinder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    sget-object v0, La/a/a/e/b;->b:La/a/a/e/c;

    invoke-interface {v0, p0, p1, p2}, La/a/a/e/c;->a(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
