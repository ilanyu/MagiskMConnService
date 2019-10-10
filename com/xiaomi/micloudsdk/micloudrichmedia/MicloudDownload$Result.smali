.class public final enum Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

.field public static final enum b:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

.field public static final enum c:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

.field public static final enum d:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

.field public static final enum e:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

.field public static final enum f:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

.field public static final enum g:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

.field public static final enum h:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

.field public static final enum i:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

.field private static final synthetic j:[Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 9
    new-instance v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->a:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    .line 10
    new-instance v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    const-string v1, "Error"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->b:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    .line 11
    new-instance v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    const-string v1, "Cancel"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->c:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    .line 12
    new-instance v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    const-string v1, "NetTimeout"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->d:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    .line 13
    new-instance v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    const-string v1, "NeedRequest"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->e:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    .line 14
    new-instance v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    const-string v1, "DataCorrupted"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->f:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    .line 15
    new-instance v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    const-string v1, "SpaceOver"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->g:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    .line 16
    new-instance v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    const-string v1, "ServerDenyReadOnly"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->h:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    .line 17
    new-instance v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    const-string v1, "Unsupported"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->i:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    const/16 v0, 0x9

    .line 8
    new-array v0, v0, [Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    sget-object v1, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->a:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->b:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->c:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->d:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->e:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->f:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->g:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->h:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    aput-object v1, v0, v9

    sget-object v1, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->i:Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    aput-object v1, v0, v10

    sput-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->j:[Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;
    .registers 2

    .line 8
    const-class v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;
    .registers 1

    .line 8
    sget-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->j:[Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    invoke-virtual {v0}, [Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/micloudsdk/micloudrichmedia/MicloudDownload$Result;

    return-object v0
.end method
