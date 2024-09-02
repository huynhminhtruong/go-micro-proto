# 1. Create tags for multiples modules:

    - cd golang/order
    - go mod init github.com/huynhminhtruong/go-ecommerce-proto/golang/order
    - git tag -a "golang/order/v1.1.1" -m "golang/order/v1.1.1"
    - git push origin "golang/order/v1.1.1"

    - cd golang/payment
    - go mod init github.com/huynhminhtruong/go-ecommerce-proto/golang/payment
    - git tag -a "golang/payment/v1.1.1" -m "golang/payment/v1.1.1"
    - git push origin "golang/payment/v1.1.1"

    - cd golang/shipping
    - go mod init github.com/huynhminhtruong/go-ecommerce-proto/golang/shipping
    - git tag -a "golang/shipping/v1.1.1" -m "golang/shipping/v1.1.1"
    - git push origin "golang/shipping/v1.1.1"

    - git tag name is path of go sub-module or go package

# 2. List and remove GIT Tags:

    - open bitbash

    - git tag => list all tags on local machine
    - git ls-remote --tags origin => git all tags on remote repository

    - git tag -d $(git tag) => delete local tags on local machine
    - git push origin --delete tag-name => delete tag on remote repository

# 3. How to tag for a commit:

## Check new changes in sub module:

    - cd golang/order
    - git status

## Commit changse of sub module:

    - git add .
    - git commit -m "Update for order module"
    - Điều này đảm bảo rằng chỉ những thay đổi trong module golang/order được commit

## Assign tag for this commit:

    - git tag -a "order/v1.1.2" -m "Release v1.1.2 for order module"

## Push commit and tag:

    - git push origin main
    - git push origin "order/v1.1.2"

## Tag verification:

    - git show "order/v1.1.2"

# 4. Config for use Personal Access Token:

    - git config --global url."https://<your-token>@github.com/".insteadOf "https://github.com/"

    go: github.com/huynhminhtruong/go-microservice-proto/golang/order@v2.2.2:
    invalid version: golang/order/go.mod has post-v2
    module path "github.com/huynhminhtruong/go-microservice-proto/golang/order/v2"
    at revision golang/order/v2.2.2
